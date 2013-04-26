class Member < ActiveRecord::Base
	belongs_to :user
	belongs_to :party
	attr_accessible :attend, :user_id, :party_id
end
