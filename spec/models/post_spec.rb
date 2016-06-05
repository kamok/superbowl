require 'rails_helper'

describe Post do
  let(:post) { Post.create(title: "Foo", body: "Bar") }

  it { should validate_presence_of (:image) }
  it { should validate_presence_of (:description) }
  
end 