class Rack::SSL::Railtie < ::Rails::Railtie
  initializer "middleware" do
    if config.respond_to?(:force_ssl) && config.force_ssl
      Rails.application.config.middleware.insert_before ActionDispatch::Static, Rack::SSL
    end
  end
end
