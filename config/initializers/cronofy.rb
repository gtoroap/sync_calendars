Rails.application.config.middleware.use OmniAuth::Builder do
    client_id = Rails.application.credentials[:cronofy][:client_id]
    client_secret = Rails.application.credentials[:cronofy][:client_secret]

    provider :cronofy, client_id, client_secret, {
      scope: "read_write"
    }
end