require 'rails_helper'

RSpec.describe Game, type: :model do
  it "is valid with valid atreibutes" do 
    # user = User.new(id: 1, name: "name", email: "email")
    # subject.user_id = 1
    # subject.artist_id = 476352
    # subject.score = 25
    # subject.hard = FALSE
    expect(subject).to be_valid
  end

  it "is not valid without name" do 
    subject.artist_name = "test name"
    expect(subject).to be_valid
  end

end