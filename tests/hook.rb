RSpec.configure do |config|
    
    config.before(:all) do
        $driver.start_driver
    end

    config.after(:all) do
        $driver.driver_quit
    end    
  end