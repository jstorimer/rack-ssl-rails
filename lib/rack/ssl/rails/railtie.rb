class Rack::SSL::Railtie < ::Rails::Railtie
  initializer "middleware" do
    if config.force_ssl
      config.middleware.use Rack::SSL
    end
  end
end
