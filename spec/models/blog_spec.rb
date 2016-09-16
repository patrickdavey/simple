require 'rails_helper'

RSpec.describe Blog, type: :model do
  it "must have a title" do
    blog = Blog.new.tap { |b| b.valid? }
    expect(blog.errors[:title].size).to eq(1)
  end

  it "must have a body" do
    blog = Blog.new.tap { |b| b.valid? }
    expect(blog.errors[:body].size).to eq(1)
  end

  it "must say hello world" do
    expect(Blog.new.hello_world).to eq("hello world")
  end
end
