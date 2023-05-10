Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "http://localhos:3000"
    resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
  end

  # for production
  allow do
    origins "https://FrontendAppAddres.com" #TODO
    resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
  end
end
