require 'rails_helper'

describe User do
  it {have_many(:posts)}

  it { should validate_presence_of (:name) }

  # describe ".from_omniauth(auth)" do
  # How does one test this?
  # end
end 