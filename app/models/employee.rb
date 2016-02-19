class Employee < ActiveRecord::Base
  has_many :employments, dependent: :destroy
  has_many :hospitals, through: :employments

  validates :surname, presence: true
  validates :surname, length: {minimum: 3, maximum: 20}
  validates :birth_year, presence: true
  validates :birth_year, numericality: {only_integer: true, greater_than_or_equal_to: 1900, less_than_or_equal_to: Date.today.year+16}
  validates :position, presence: true 
  validates :position, inclusion: {in: [ 'doctor', 'assistant', 'nurse' ]}


  # scope :not_yet_working, lambda {|hospital_id| joins(:hospitals).where("hospital_id NOT ?", hospital_id) }
end