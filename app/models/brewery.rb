class Brewery < ActiveRecord::Base
	has_many :beers
	has_attached_file :image, styles: {
	    medium: '600x600#'
	    
	  }

	  # Validate the attached image is image/jpg, image/png, etc
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
