json.extract! message_hashtag, :id, :message_id, :hashtag_id, :created_at, :updated_at
json.url message_hashtag_url(message_hashtag, format: :json)
