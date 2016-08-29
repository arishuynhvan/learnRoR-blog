class Comment < ActiveRecord::Base
	#Set up an active record association
  belongs_to :article
end
