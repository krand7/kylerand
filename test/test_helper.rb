ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  include Devise::TestHelpers

  def login(resource)
    @request.env['devise.mapping'] = Devise.mappings[resource]
    sign_in(resource.class.name.downcase.to_sym, resource)
  end
end
