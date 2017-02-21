Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, "373975549624688", "1d2ee503e7a096df391ca3cec200eb55"
  provider :google_oauth2, "815257299137-k1rsi2h61pq78qp85snt25ueanukq0qg.apps.googleusercontent.com", "x9smveJ4RRL1PJ-wH_f3z4qp",
         scope: 'profile', image_aspect_ratio: 'square', image_size: 48, access_type: 'online', name: 'google'
end