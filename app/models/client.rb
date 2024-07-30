class Client < ApplicationRecord
  validates :name, :surname, :age, presence: true
  validates :email, uniqueness: {case_sensitive: false}, presence: true
  has_many :pets, dependent: :restrict_with_exception
end
