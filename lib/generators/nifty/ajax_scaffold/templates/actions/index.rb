  def index
    @<%= instances_name %> = <%= class_name %>.all
		respond_with(@<%= instances_name %>)
  end
