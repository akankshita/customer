# Be sure to restart your server when you modify this file

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.11' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  # Settings in config/environments/* take precedence over those specified here.
  # Application configuration should go into files in config/initializers
  # -- all .rb files in that directory are automatically loaded.

  # Add additional load paths for your own custom dirs
  # config.load_paths += %W( #{RAILS_ROOT}/extras )

  # Specify gems that this application depends on and have them installed with rake gems:install
  # config.gem "bj"
  # config.gem "hpricot", :version => '0.6', :source => "http://code.whytheluckystiff.net"
  # config.gem "sqlite3-ruby", :lib => "sqlite3"
  # config.gem "aws-s3", :lib => "aws/s3"

  # Only load the plugins named here, in the order given (default is alphabetical).
  # :all can be used as a placeholder for all plugins not explicitly named
  # config.plugins = [ :exception_notification, :ssl_requirement, :all ]

  # Skip frameworks you're not going to use. To use Rails without a database,
  # you must remove the Active Record framework.
  # config.frameworks -= [ :active_record, :active_resource, :action_mailer ]

  # Activate observers that should always be running
  # config.active_record.observers = :cacher, :garbage_collector, :forum_observer

  # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
  # Run "rake -D time" for a list of tasks for finding time zone names.
  #config.active_record.default_timezone = 'UTC'
  #config.time_zone = 'UTC'

  # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
  # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}')]
  # config.i18n.default_locale = :de


  config.action_mailer.delivery_method = :smtp

  config.action_mailer.raise_delivery_errors = true


end

=begin
ActionMailer::Base.smtp_settings = {  
  :address              => "smtp.gmail.com",  
  :port                 => 587,  
  :domain               => "gmail.com",  
  :user_name            => "sandboxtest1987",  
  :password             => "sandboxtest1987",  
  :authentication       => "plain",  
  :enable_starttls_auto => true  
}
=end
 ActionMailer::Base.smtp_settings = {
    :address => "mail.e-missionmanagement.com",
    :port => 587,
    :domain => "e-missionmanagement.com",
    :authentication => :login,
    :user_name => "support@e-missionmanagement.com",
    :password => "harry1potter2"
 }

AWS::S3::Base.establish_connection!(
  :access_key_id     => 'AKIAIORLHH3Q24UEEJIQ',
  :secret_access_key => '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'
)
#TODO BoD figure out why this is happening and if we can get rid of it
require 'will_paginate'