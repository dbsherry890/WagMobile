# if Rails.application.credentials.stripe
#Stripe.api_key = Rails.application.credentials[:stripe]
# end
Rails.configuration.stripe = {
    :publishable_key => ENV['PUBLISHABLE_KEY'],
    :private_key => ENV['PRIVATE_KEY']
  }
  
Stripe.api_key = Rails.configuration.stripe[:private_key]