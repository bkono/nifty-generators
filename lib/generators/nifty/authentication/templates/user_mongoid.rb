class <%= user_class_name %> 
	include Mongoid::Document
	include Mongoid::Timestamps
<%- if options[:authlogic] -%>
  acts_as_authentic
<%- else -%>
  # new columns need to be added here to be writable through mass assignment
  attr_accessible :username, :email, :password, :password_confirmation

	field :username
	field :email
	field :password_hash

  attr_accessor :password
  before_save :prepare_password

  validates_presence_of :username
  validates_uniqueness_of :username, :email, :allow_blank => true
  validates_format_of :username, :with => /^[-\w\._@]+$/i, :allow_blank => true, :message => "should only contain letters, numbers, or .-_@"
  validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i
  validates_presence_of :password, :on => :create
  validates_confirmation_of :password
  validates_length_of :password, :minimum => 4, :allow_blank => true

  # login can be either username or email address
  def self.authenticate(login, pass)
    <%= user_singular_name %> = first(:conditions => {:username => login}) || first(:conditions => {:email => login})
    return <%= user_singular_name %> if <%= user_singular_name %> && BCrypt::Password.new(<%= user_singular_name %>.password_hash) == pass
  end

  private

  def prepare_password
    unless password.blank?
			self.password_hash = BCrypt::Password.create(password)
    end
  end
<%- end -%>
end