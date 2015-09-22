require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:post) { FactoryGirl.build(:post) }

  it 'validates presence of user' do
    expect(post).to validate_presence_of(:user)
  end

  it 'belongs to user' do
    expect(post).to belong_to(:user)
  end

  it 'validates presence of kult' do
    expect(post).to validate_presence_of(:kult)
  end

  it 'belongs to kult' do
    expect(post).to belong_to(:kult)
  end

  it 'validates presence of content' do
    expect(post).to validate_presence_of(:content)
  end
end
