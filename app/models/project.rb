class Project < ActiveRecord::Base
  belongs_to :user

  validates :name,  presence: true, length: {minimum: 5, maximum: 80}
  validates :image,  presence: true
  validates :version, numericality: {greater_than_or_equal_to: 0}
end
