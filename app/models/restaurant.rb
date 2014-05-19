class Restaurant < ActiveRecord::Base
	serialize :foods,Array
end
