class Style < ActiveRecord::Base
	has_many :beers
	has_attached_file :image, styles: {
	    full: '1920x1200#',
	    small: '400x300#'
	    
	  }

	  # Validate the attached image is image/jpg, image/png, etc
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
