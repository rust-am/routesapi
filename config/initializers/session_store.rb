if Rails.env == 'production'
  Rails.application.config.session_store :cookie_store,key: "_authentication_app" # TODO , domain: "something-routes-app-api.heroku.com"
else
  Rails.application.config.session_store :cookie_store,key: "_authentication_app"
end
