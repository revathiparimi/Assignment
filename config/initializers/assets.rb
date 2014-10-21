# Be sure to restart your server when you modify this file.
Rails.application.config.assets.precompile += %w( home2.css )
Rails.application.config.assets.precompile += %w( dashboard2.css )
Rails.application.config.assets.precompile += %w( forspecificuser.css )
Rails.application.config.assets.precompile += %w( allviews.css )
Rails.application.config.assets.precompile += %w( bootstrap.css )
Rails.application.config.assets.precompile += %w( bootstrap.js )
# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
