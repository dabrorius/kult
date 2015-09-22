require 'rails_helper'

RSpec.describe Kult, type: :model do
  let(:kult) { FactoryGirl.build(:kult) }

  it 'validates presence of name' do
    expect(kult).to validate_presence_of(:name)
  end

  it 'does not validate presenc of description' do
    expect(kult).to_not validate_presence_of(:description)
  end

  describe '#uuid' do
    it 'is assigned automatically' do
      kult = FactoryGirl.build(:kult, uuid: nil)
      kult.save
      expect(kult.uuid).to_not be_blank
    end

    it 'is not rewriten on save' do
      kult = FactoryGirl.build(:kult, uuid: '123-existing-uuid')
      expect { kult.save }.to_not change { kult.uuid }
    end
  end

  it 'has many posts' do
    expect(kult).to have_many(:posts)
  end

  it 'has many memberships' do
    expect(kult).to have_many(:memberships)
  end

  it 'has many users' do
    expect(kult).to have_many(:users).through(:memberships)
  end
end
