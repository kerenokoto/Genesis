class Event < ActiveRecord::Base
	mount_uploader :picture, PictureUploader
	has_many :comments, dependent: :destroy
	belongs_to :user
end
