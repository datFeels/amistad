module Amistad
  module GroupFriendshipModel
    def self.included(receiver)
      if receiver.ancestors.map(&:to_s).include?("ActiveRecord::Base")
        receiver.class_exec do
          include Amistad::ActiveRecordGroupFriendshipModel
        end
      else
        raise "Amistad only supports ActiveRecord and Mongoid"
      end
    end
  end
end
