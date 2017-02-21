Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, "373975549624688", "1d2ee503e7a096df391ca3cec200eb55"
end