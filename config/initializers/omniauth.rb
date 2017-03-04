Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, "373975549624688", "1d2ee503e7a096df391ca3cec200eb55",
  :client_options => {:ssl => {:ca_file => '/etc/pki/tls/certs/ca-bundle.crt'}}
  provider :google_oauth2, "734924369558-oa26irhhp8esak9auj7t3kiooggdpjjs.apps.googleusercontent.com", "fpPnDjM6l2-zYjY0jvKFbUsk",
         scope: 'profile', image_aspect_ratio: 'square', image_size: 48, access_type: 'online', name: 'google'
end

