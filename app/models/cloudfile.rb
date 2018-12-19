class Cloudfile < ApplicationRecord
	mount_uploader :ffile, FileUploader
	belongs_to :user

	
end
