class MessageHashtag < ActiveRecord::Base

belongs_to :hashtag
belongs_to :message

end
