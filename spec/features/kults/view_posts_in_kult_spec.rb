require 'rails_helper'

describe 'View posts in a kult' do
  let(:current_user) { FactoryGirl.create(:user) }
  before { sign_in_as(current_user) }
  let(:kult) { FactoryGirl.create(:kult) }
  let!(:post) { FactoryGirl.create(:post, content: 'I like pie!', kult: kult) }

  specify 'user can see posts related to this kult' do
    visit kult_path(kult)
    expect(page).to have_content('I like pie!')
  end
end
