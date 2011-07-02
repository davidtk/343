class Role < ActiveRecord::Base
	has_and_belongs_to_many :permissions
	has_and_belongs_to_many :users
	def set_permissions(ps)
		permissions.clear
		ps.each do |k,v|
			if v.include?("1")
				permissions.push(Permission.find(k))
			end
		end
	end
end
