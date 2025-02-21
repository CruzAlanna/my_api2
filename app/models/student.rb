class Student < ApplicationRecord
  validates :name, presence: true
  validates :grade, presence: true

  belongs_to :teacher
end
