module Device

   module Location_Permissions
    
       def self.location_permission_allow_button
          $driver.find_element(:id, 'com.android.packageinstaller:id/permission_allow_button')
       end
    
    end
end