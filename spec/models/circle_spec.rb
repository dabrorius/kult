require 'rails_helper'

RSpec.describe Circle, type: :model do
  let(:circle) { FactoryGirl.build(:circle) }

  it 'validates presence of name' do
    expect(circle).to validate_presence_of(:name)
  end

  it 'does not validate presenc of description' do
    expect(circle).to_not validate_presence_of(:description)
  end

  describe '#uuid' do
    it 'is assigned automatically' do
      circle = FactoryGirl.build(:circle, uuid: nil)
      circle.save
      expect(circle.uuid).to_not be_blank
    end

    it 'is not rewriten on save' do
      circle = FactoryGirl.build(:circle, uuid: '123-existing-uuid')
      expect { circle.save }.to_not change { circle.uuid }
    end
  end
end
