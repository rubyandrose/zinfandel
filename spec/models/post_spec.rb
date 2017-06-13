require 'rails_helper'

RSpec.describe Post do
  it 'requires the content to be >= 10 characters' do
    post = Post.new
    post.content = "short"
    expect(post.valid?).to eq false
    expect(post.errors.keys).to include(:content)
  end

  it 'requires the content to not be blank' do
    post = Post.new
    post.content = ""
    expect(post.valid?).to eq false
    expect(post.errors.keys).to include(:content) 
  end
end
