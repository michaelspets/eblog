class Tag < ActiveRecord::Base
  #has_many :tag_article_assocs
  #has_many :articles, through: :tag_article_assocs
  has_and_belongs_to_many :articles
  validates :name, presence: true, uniqueness: true
end
