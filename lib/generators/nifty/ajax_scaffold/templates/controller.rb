class <%= plural_class_name %>Controller < ApplicationController
	respond_to :html, :js

  <%= controller_methods :actions %>
end
