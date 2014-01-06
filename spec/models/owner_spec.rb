require 'spec_helper'

describe Owner do
  
  it { should have_valid(:first_name).when("Jonah", "Adam") }
  it { should_not have_valid(:first_name).when(nil, '') }

  it { should have_valid(:last_name).when("Kaufman", "Jones") }
  it { should_not have_valid(:last_name).when('', nil) }

  it { should have_valid(:company_name).when("Launch Academy", "The Awesome Company") }

  it { should have_valid(:email_address).when("jonah@gmail.com", "kaufman@aol.com") }
  it { should_not have_valid(:email_address).when(nil, '') }
  it { should_not have_valid(:email_address).when("Jonah", "invalid email adress") }

  it { should have_many(:buildings).dependent(:nullify) }
end