require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryGirl.build(:user) }

  it 'has many posts' do
    expect(user).to have_many(:posts)
  end
end
