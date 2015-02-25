class Beer < ActiveRecord::Base
	has_many :prices
	has_many :stores, through: :prices
	belongs_to :brewery
	belongs_to :family
	belongs_to :style
	has_attached_file :image, styles: {
	    medium: '600x800#',
	    medium: '480x640#'
	    
	  }

	  # Validate the attached image is image/jpg, image/png, etc
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
