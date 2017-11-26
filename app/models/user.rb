class User < ApplicationRecord
	has_many :accounts

	validates :first_name, :last_name, :email, presence: true
end
