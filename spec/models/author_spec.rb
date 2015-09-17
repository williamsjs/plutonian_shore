require 'rails_helper'

describe Author do
  it "has a valid factory" do
    expect(build(:author)).to be_valid
  end
  
end
