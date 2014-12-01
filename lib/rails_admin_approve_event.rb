require "rails_admin_approve_event/engine"

module RailsAdminApproveEvent
end

require 'rails_admin/config/actions'

module RailsAdmin
  module Config
    module Actions
      class ApproveEvent < Base
        RailsAdmin::Config::Actions.register(self)

        register_instance_option :link_icon do
          'icon-check'
        end
        register_instance_option :visible? do
          authorized? && bindings[:object].class == Evenement
        end

        register_instance_option :member? do
          true
        end

        register_instance_option :object_level do
          true
        end
      end
    end
  end
end

