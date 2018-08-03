require 'rails_helper'
require 'faker'

RSpec.describe Phonebook, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  #JUST USING RSPEC + FAKER
  # subject = Phonebook.new(user_id: Faker::Number.digit, name: Faker::Name.name , number: Faker::Number.number(10))
  # it "is valid with valid attributes" do
  #   expect(subject).to be_valid
  # end
  # it "is not valid without a user_id" do
  #   subject.user_id = nil
  #   expect(subject).to_not be_valid
  # end
  # it "is not valid without a name" do
  #   subject.name = nil
  #   expect(subject).to_not be_valid
  # end
  # it "is not valid without a number" do
  #   subject.number = nil
  #   expect(subject).to_not be_valid
  # end

  #WITH FACTORY BOT + FAKER (ON DIFFERENT FILE)
  before(:all) do
    @subject = create(:phonebook)
  end

  it "is valid with valid attributes" do
    expect(@subject).to be_valid
  end
  
  it "is not valid without a user_id" do
    subject2 = build(:phonebook, user_id: nil)
    expect(subject2).to_not be_valid
  end

  it "is not valid without a name" do
    subject2 = build(:phonebook, name: nil)
    expect(subject2).to_not be_valid
  end

  it "is not valid without a number" do
    subject2 = build(:phonebook, number: nil)
    expect(subject2).to_not be_valid
  end

end
