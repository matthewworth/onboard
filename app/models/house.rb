class House < ActiveRecord::Base
	 has_attached_file :image
	 validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

	 has_many :orders
	 belongs_to :user

	 geocoded_by :address
	 before_validation :geocode
	validates :latitude, presence: true
	validates :longitude, presence: true
	
end
