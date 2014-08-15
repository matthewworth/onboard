class User < ActiveRecord::Base
	has_secure_password

	has_many :houses
	has_many :orders
end
