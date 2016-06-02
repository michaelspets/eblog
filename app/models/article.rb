class Article < ActiveRecord::Base
  #has_many :tag_article_assocs
  #has_many :tags, through: :tag_article_assocs
  has_and_belongs_to_many :tags
  validates :title, presence: true, length: { minimum: 5 }, uniqueness: true
end
