class <%= class_name %> 
	include Mongoid::Document
 	<%- unless options[:skip_timestamps] -%>
		include Mongoid::Timestamps	
	<%- end -%>

  attr_accessible <%= model_attributes.map { |a| ":#{a.name}" }.join(", ") %>

	<%- model_attributes.each do |attribute| -%>
		field :<%= attribute.name %>,		type => <%= attribute.type.capitalize %>
  <%- end -%>

end
