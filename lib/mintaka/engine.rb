module Mintaka
  class Engine < Rails::Engine
    initializer "Set up default parent engine" do |app|
      Mintaka.parent_engine ||= Rails.application
    end

    initializer "Require concerns path" do |app|
      concerns_path = "app/controllers/concerns"

      unless app.paths.keys.include?(concerns_path)
        app.paths.add(concerns_path)
      end
    end

    initializer "Require for Rails 3" do |app|
      if defined?(Rails) && Rails::VERSION::MAJOR == 3
        require "concerns/mintaka/static_page"
        require "mintaka/pages_controller"
      end
    end
  end
end
