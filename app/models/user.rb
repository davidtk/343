class User < ActiveRecord::Base
	has_and_belongs_to_many :roles
	has_many :analytics
	has_many :authored_contents, 
		:class_name => "content",
		:foreign_key => "author_id"
	has_many :edited_contents,
		:class_name => "content",
		:foreign_key => "editor_id"
	def set_roles(rs)
		roles.clear
		rs.each do |k,v|
			if v.include?("1")
				roles.push(Role.find(k))
			end
		end
	end
end
