class Course < ApplicationRecord
  has_many :enrollments, dependent: :destroy
  has_many :students, through: :enrollments

  validates :title, presence: true
  validates :code, presence: true, uniqueness: true
end
