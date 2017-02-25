class Hashtag < ActiveRecord::Base

has_many :messages, through: :message_hashtags

end
