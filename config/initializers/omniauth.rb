Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, "482605105102029", "2f656c064516c8f964f88a7da44a7f56"
end