if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_MaOcwHN3WwPSWm3Oi6WyyWna',
    secret_key: 'sk_test_iO7ORQOsXLM1zTAC0o4w3k4A'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]