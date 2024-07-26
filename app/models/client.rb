class Client < ApplicationRecord
  validates :name, :surname, :age, :email, presence: true
  has_many :pets, dependent: :restrict_with_exception
end
