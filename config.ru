# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment', __FILE__)

if not Rails.env.production?
	use Rack::ContentLength
end

run Rails.application
