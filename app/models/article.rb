class Article < ActiveRecord::Base
  validates :title, :category, :published_at, presence: true
  belongs_to :category
end
