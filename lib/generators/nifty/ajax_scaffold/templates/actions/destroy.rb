  def destroy
    @<%= instance_name %> = <%= class_name %>.find(params[:id])
    @<%= instance_name %>.destroy
    flash[:notice] => "Successfully destroyed <%= class_name.underscore.humanize.downcase %>."
		respond_with(@<%= instance_name %>)		
  end
