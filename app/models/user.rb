class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # uncomment these once fields are added to database

	# validates :first_name, presence: true
	# validates :last_name, presence: true
	# validates :username, presence: true, uniqueness: true
	validates :email, presence: true,
				uniqueness: true,
				format: {
					with: /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/
				}

	before_save :downcase_credentials

	def downcase_credentials
		self.email = email.downcase
	end

# method used to verify whether user is admin or nor
 def is_admin?
   self.admin == true
 end

end
