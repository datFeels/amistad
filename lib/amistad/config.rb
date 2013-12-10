module Amistad
  class << self
    attr_accessor :friend_model
    attr_accessor :group_friend_model

    def configure
      yield self
    end

    def friend_model
      @friend_model || 'User'
    end

    def group_friend_model
      @group_friend_model || 'Group'
    end

    def friendship_model
      "#{self.friend_model}Friendship"
    end

    def group_friendship_model
      "#{self.group_friend_model}Friendship"
    end

    def friendship_class
      Amistad::Friendships.const_get(self.friendship_model)
    end

    def group_friendship_class
      Amistad::Friendships.const_get(self.group_friendship_model)
    end
  end
end
