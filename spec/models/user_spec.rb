require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryGirl.build(:user) }

  it 'has many posts' do
    expect(user).to have_many(:posts)
  end

  it 'has many memberships' do
    expect(user).to have_many(:memberships)
  end

  it 'has many circles' do
    expect(user).to have_many(:kults).through(:memberships)
  end
end
