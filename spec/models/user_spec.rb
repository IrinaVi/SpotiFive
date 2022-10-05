require 'rails_helper'

RSpec.describe User, type: :model do
  it "is valid with valid atreibutes" do 
    subject.name = "Test name"
    subject.email = "email"
    expect(subject).to be_valid
  end

  it "is not valid without name" do 
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without email" do 
    subject.email = nil
    expect(subject).to_not be_valid
  end
end
