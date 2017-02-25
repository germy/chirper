class Message < ActiveRecord::Base



belongs_to :user
has_many :hash_tags, through: :message_hashtags

end
