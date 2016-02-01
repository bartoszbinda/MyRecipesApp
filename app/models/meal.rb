class Meal < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 5, maximum: 100}, uniqueness: { case_sensitive: false }
  validates :description, presence: true, length: {minimum: 20, maximum: 500}
  validates :price, presence: true, numericality: {only_float: true}

end
