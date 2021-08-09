class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_and_belongs_to_many :images, dependent: :destroy
  accepts_nested_attributes_for :images

  enum coming_from: [:database, :NYTIMES]
  enum status: [:draft, :published]

  def self.build_NYTIMES_post(post_hash)
    require 'json'
    post = Post.new
    post.coming_from = "NYTIMES"
    post.title = post_hash["title"]
    post.category = post_hash["section"]
    post.abstract = post_hash["abstract"]
    post.url = post_hash["url"]
    image = Image.new(
      url: post_hash["multimedia"][3]["url"],
      caption: post_hash["multimedia"][0]["caption"],
      alt: post_hash["multimedia"][0]["caption"],
      format: post_hash["multimedia"][0]["format"]
    )
    post.images << image
   post
  end




end
