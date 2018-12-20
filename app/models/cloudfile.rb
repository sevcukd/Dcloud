class Cloudfile < ApplicationRecord
	mount_uploader :ffile, FileUploader
	belongs_to :user

	validates :name,  length: { minimum: 2 }
	validates :description, length: { minimum: 5 }
	validates :ffile, presence: true
end
