require 'rails_helper'

RSpec.describe Membership, type: :model do
  let(:membership) { FactoryGirl.build(:membership) }

  it 'vaildates presence of user' do
    expect(membership).to validate_presence_of(:user)
  end

  it 'belongs to user' do
    expect(membership).to belong_to(:user)
  end

  it 'validates presence of kult' do
    expect(membership).to validate_presence_of(:kult)
  end

  it 'belongs to kult' do
    expect(membership).to belong_to(:kult)
  end

  it 'validates presence of role' do
    expect(membership).to validate_presence_of(:role)
  end

  it 'validates value of role' do
    expect(membership).to validate_inclusion_of(:role)
      .in_array(%w(member admin))
  end
end
