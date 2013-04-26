class Party < ActiveRecord::Base
	has_many :attend

	attr_accessible :name
end
