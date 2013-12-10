module Amistad
  module GroupFriendships
    if Object.const_defined? :ActiveRecord
      const_set Amistad.group_friendship_model, Class.new(ActiveRecord::Base)
      const_get(Amistad.group_friendship_model.to_sym).class_exec do
        include Amistad::GroupFriendshipModel
        self.table_name = 'friendships'
      end
    elsif Object.const_defined? :Mongoid
      raise('Mongoid Not Implemented for GroupFriendships')
    else
      raise "Amistad only supports ActiveRecord"
    end
  end
end
