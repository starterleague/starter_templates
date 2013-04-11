

gem 'exception_notification', :git => 'git@github.com:darbyfrey/exception_notification.git'
gem 'httparty'

inject_into_file 'config/environments/development.rb', :before => "end" do
  <<-eos

  # ExceptionNotifier gem configuration
  config.middleware.use ExceptionNotifier,
    :webhook => {
      :url => 'http://beaconapp.herokuapp.com/exceptions'
    }
  eos
end