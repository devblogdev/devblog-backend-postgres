class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_and_belongs_to_many :images

  enum coming_from: [:database, :NYTIMES]


  def self.build_NYTIMES_post(post_hash)
    post = Post.new
    byebug
    post.coming_from= "NYTIMES"
    post.title = post_hash["title"]
    post.category = post_hash["section"]
    post.abstract = post_hash["abstract"]
    post.url = post_hash["url"]
    post.images << Image.new(
      url: post_hash["multimedia"][0]["url"],
      caption: post_hash["multimedia"][0]["caption"],
      alt: post_hash["multimedia"][0]["caption"],
      format: post_hash["multimedia"][0]["format"]
    )
    post
  end




end
