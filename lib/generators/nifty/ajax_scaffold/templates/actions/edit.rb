  def edit
    @<%= instance_name %> = <%= class_name %>.find(params[:id])
		respond_with(@<%= instance_name %>)		
  end
