Rails.application.config.session_store :cookie_store,
                                       key: "_authentication_app", domain: "something-routes-app-api.heroku.com"
