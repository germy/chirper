class Message < ActiveRecord::Base


belongs_to :user
has_many :hash_tags, through: :message_hashtags

after_save :add_hashtags
after_destroy :remove_hashtags

private

  def remove_hashtags
    MessageHashtag.where("message_id = ?", self.id).each do |m|
      m.destroy
    end
  end

  def add_hashtags
    remove_hashtags

    self.message.split(" ").each do |i|
      if i.include? "#"
        hashtag = Hashtag.where("name = ?", i).first
        if hashtag.nil?
          h = Hashtag.new
          h.name = i
          h.save
        end

        hashtag_id = Hashtag.where("name = ?", i).first.id
        mm = MessageHashtag.new
        mm.message_id = self.id
        mm.hashtag_id = hashtag_id
        mm.save
      end
    end
  end

end
