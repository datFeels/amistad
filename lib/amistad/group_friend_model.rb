module Amistad
  module GroupFriendModel
    def self.included(receiver)
      if receiver.ancestors.map(&:to_s).include?("ActiveRecord::Base")
        receiver.class_exec do
          include Amistad::ActiveRecordGroupFriendModel
        end
      elsif receiver.ancestors.map(&:to_s).include?("Mongoid::Document")
        raise('Mongoid Not Implemented for GroupFriendModel')
      elsif receiver.ancestors.map(&:to_s).include?("MongoMapper::Document")
        raise('MongoMapper Not Implemented for GroupFriendModel')
      else
        raise "Amistad only supports ActiveRecord"
      end
    end
  end
end
