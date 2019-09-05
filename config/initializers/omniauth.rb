Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, 'e6c8e257a5a17d7569a7', '11cf03a5033a550ff1b62dac82125348119fa049'
end
