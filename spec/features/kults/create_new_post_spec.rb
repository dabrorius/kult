require 'rails_helper'

describe 'View posts in a kult' do
  let(:current_user) { FactoryGirl.create(:user) }
  before { sign_in_as(current_user) }
  let!(:kult) { FactoryGirl.create(:kult) }

  context 'when I submit a new post', js: true do
    before do
      visit kult_path(kult)
      fill_in :post_content, with: 'Hello world'
      click_button 'Post'
    end
    specify "I can see it's content" do
      expect(page).to have_content('Hello world')
    end
  end
end
