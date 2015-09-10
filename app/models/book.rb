class Book < ActiveRecord::Base
  validates :title, presence: true
  validates :author, presence: true
  validates :favorite, inclusion: { in: [true, false] }
end
