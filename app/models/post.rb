class Post < ApplicationRecord
  belongs_to :user

  has_many :comments, dependent: :destroy
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images

  enum coming_from: [:database, :NYTIMES]
  enum status: [:draft, :published]

  validates :title, presence: true, on: :create
  validates :body, presence: true, on: :create
  # url is the post slug
  validates :url, uniqueness: true, :allow_nil => true

  def creation_time
    if self.coming_from == "database"
      self.created_at.strftime('%b %-d, %Y')
    else
      Date.today.strftime('%b %-d, %Y')
    end
  end

  def build_slug 
    initial = self.title.downcase.parameterize.gsub("_", "")
    initial_array = initial.split("-")
    i = initial_array.length - 1
    while initial.length > 95
      i -= 1
      initial = initial_array[0..i].join("-")
    end
    self.url = self.user.username + "/" + initial + "-" + SecureRandom.hex(5)
  end

  def self.build_NYTIMES_post(post_hash)
    require 'json'
    post = Post.new
    post.coming_from = "NYTIMES"
    post.title = post_hash["title"]
    post.category = post_hash["section"]
    post.abstract = post_hash["abstract"]
    post.url = post_hash["url"]
    image = Image.new(
      url: post_hash["multimedia"][0]["url"],
      caption: post_hash["multimedia"][0]["caption"],
      alt: post_hash["multimedia"][0]["caption"],
      format: post_hash["multimedia"][0]["format"]
    )
    post.images << image
   post
  end


end
