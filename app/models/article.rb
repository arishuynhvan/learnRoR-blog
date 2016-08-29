class Article < ActiveRecord::Base
	#establish association with comments for creating, saving and destroying them tgt with article
	has_many :comments, dependent: :destroy
	validates :title, presence: true, length: { minimum: 5 }
end
