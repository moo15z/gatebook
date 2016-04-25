class Note < ActiveRecord::Base
	validates :title, presence: true
	validates :content, presence: true, length: {maximum: 140}
	validates :user_id, presence: true
end
