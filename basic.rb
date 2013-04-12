gem 'exception_notification', :git => 'git@github.com:darbyfrey/exception_notification.git'
gem 'beacon_client', :git => '/Users/darby/projects/starterleague/beacon_client'
gem 'starter_generators'

inject_into_file 'config/environments/development.rb', :before => "end" do
  <<-eos

  # ExceptionNotifier gem configuration
  config.middleware.use ExceptionNotifier,
    :webhook => {
      :url => 'http://beaconapp.herokuapp.com/exceptions'
    }
  eos
end