require 'rails_helper'

RSpec.describe Circle, type: :model do
  let(:circle) { FactoryGirl.build(:circle) }

  it 'validates presence of name' do
    expect(circle).to validate_presence_of(:name)
  end

  it 'does not validate presenc of description' do
    expect(circle).to_not validate_presence_of(:description)
  end

  it 'automatically assigns UUID' do
    circle = Circle.new
    expect(circle.uuid).to_not be_blank
  end
end
