Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:4000' # your client's domain

    resource '*',
    headers: :any,
    methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end