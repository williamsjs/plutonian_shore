require 'rails_helper'

describe Book do

  it "has a valid factory" do
    expect(build(:book)).to be_valid
  end

  it "is invalid without a year" do
    expect(build(:book, publication_year: nil)).to_not be_valid
  end

  it "is invalid without an author" do
    expect(build(:book, :poe)).to_not be_valid
  end

end
