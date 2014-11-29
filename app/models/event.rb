class Event < ActiveRecord::Base
	mount_uploader :picture, PictureUploader
	has_many :comments, dependent: :destroy
	belongs_to :user

	validates :title, presence: true
	validates :venue, presence: true
	validates :description, presence: true
end
