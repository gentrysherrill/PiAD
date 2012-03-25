class Contact < ActiveRecord::Base
  validates :first_name, :last_name, :email_address, presence: true
  validates :email_address, uniqueness: true
  validates :email_address, format: {
    with: %r{\w+@\w+.\w+},
	message: "Email format invalid; please try again"
  }
end
