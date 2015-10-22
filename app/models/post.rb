class Post < ActiveRecord::Base
	validates :title, :content, :post_time, presence: true
end
