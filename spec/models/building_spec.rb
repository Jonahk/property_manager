require 'spec_helper'

describe Building do
  
  it { should have_valid(:name).when("Big Building", "Small Building")}
  it { should_not have_valid(:name).when('', nil) }

  it { should have_valid(:city).when("Memphis", "Boston") }
  it { should_not have_valid(:city).when(nil, '') }

  it { should have_valid(:state).when("TN", "MA") }
  it { should_not have_valid(:state).when(nil, '', "Jonah", "Tennessee") }

  it { should have_valid(:address).when("461 Sutton Pl", "33 Harrison Ave.") }
  it { should_not have_valid(:address).when(nil, '') }

  it { should have_valid(:zip_code).when("38120", "02129") }
  it { should_not have_valid(:zip_code).when(nil, "123456", "hi5")}

  it { should have_valid(:owner).when(Owner.new) }

  it { should belong_to(:owner) }

end