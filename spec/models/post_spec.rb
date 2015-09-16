require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:post) { FactoryGirl.build(:post) }

  it 'validates presence of user' do
    expect(post).to validate_presence_of(:user)
  end

  it 'belongs to user' do
    expect(post).to belong_to(:user)
  end

  it 'validates presence of circle' do
    expect(post).to validate_presence_of(:circle)
  end

  it 'belongs to circle' do
    expect(post).to belong_to(:circle)
  end

  it 'validates presence of content' do
    expect(post).to validate_presence_of(:content)
  end
end
