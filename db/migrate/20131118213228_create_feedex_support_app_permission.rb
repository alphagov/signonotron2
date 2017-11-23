class CreateFeedexSupportAppPermission < ActiveRecord::Migration[4.2]
  class SupportedPermission < ActiveRecord::Base
    belongs_to :application, class_name: 'Doorkeeper::Application'
  end

  def up
    support = ::Doorkeeper::Application.find_by_name("Support")
    if support
      SupportedPermission.create!(application: support, name: "feedex")
    end
  end
end
