require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  let(:kult) { FactoryGirl.create(:kult) }

  context 'when user is unauthenticated' do
    describe "POST #create" do
      it "creates a new post" do
        get :create, kult_id: kult, post: { content: 'A new post' }
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end

  context 'when user is signed in' do
    let(:current_user) { FactoryGirl.create(:user) }
    before { sign_in current_user }

    describe "POST #create" do
      it "creates a new post" do
        expect { get :create, kult_id: kult, post: { content: 'A new post' } }
          .to change { Post.count }.from(0).to(1)
        expect(Post.last.content).to eq('A new post')
        expect(response).to have_http_status(:success)
      end
    end
  end
end
