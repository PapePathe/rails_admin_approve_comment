require "rails_admin_approve_event/engine"

module RailsAdminApproveEvent
end

require 'rails_admin/config/actions'

module RailsAdmin
  module Config
    module Actions
      class ApproveEvent < Base
        RailsAdmin::Config::Actions.register(self)
        
        register_instance_option :object_level do
          true
        end
      end
    end
  end
end

