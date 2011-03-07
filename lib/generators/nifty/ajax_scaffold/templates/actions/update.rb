  def update
    @<%= instance_name %> = <%= class_name %>.find(params[:id])
    if @<%= instance_name %>.update_attributes(params[:<%= instance_name %>])
      flash[:notice]  = "Successfully updated <%= class_name.underscore.humanize.downcase %>."
    end
		respond_with(@<%= instance_name %>)				
  end
