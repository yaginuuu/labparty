class Attend < ActiveRecord::Base
	belongs_to :user

	attr_accessible :attend, :party_id, :user_id
end
