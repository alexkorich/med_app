class Hospital < ActiveRecord::Base
  has_many :employments
  has_many :employees, through: :employments

  validates :order_number, presence: true
  validates :order_number, numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 100}
  validates :order_number, uniqueness: true
end
