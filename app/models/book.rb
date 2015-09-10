class Book < ActiveRecord::Base
  validates :title, presence: true
  validates :author, presence: true
  validates :favorite, inclusion: { in: [true, false] }
  validates :rating, numericality: { greater_than: -1, less_than: 101 }, allow_blank: true
end
