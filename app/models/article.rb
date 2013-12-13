class Article < ActiveRecord::Base
  validates :title, :category, presence: true
  belongs_to :category
end
