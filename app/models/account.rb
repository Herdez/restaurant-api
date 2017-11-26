class Account < ApplicationRecord
	belongs_to :user, optional: true

	validates :date, :balance, presence: true
end
