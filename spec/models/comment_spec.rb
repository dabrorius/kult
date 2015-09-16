require 'rails_helper'

RSpec.describe Comment, type: :model do
  let(:comment) { FactoryGirl.build(:comment) }

  it 'belongs to user' do
    expect(comment).to belong_to(:user)
  end

  it 'validates presence of user' do
    expect(comment).to validate_presence_of(:user)
  end

  it 'belongs to post' do
    expect(comment).to belong_to(:post)
  end

  it 'validates presence of post' do
    expect(comment).to validate_presence_of(:post)
  end

  it 'validates presence of content' do
    expect(comment).to validate_presence_of(:content)
  end
end
