class Account < ApplicationRecord
	belongs_to :user, optional: true

	validates :date, :balance, presence: true

	def borrow(borrower)
    return false if user.present?
 
    self.user = borrower
    save
  end
 
  def return_account(borrower)
    return false unless user.present?
 
    self.user = nil
    save
  end

end
