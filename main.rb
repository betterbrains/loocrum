run "rm -Rf README public/index.html public/javascripts/* test app/views/layouts/*"
run "touch README"

gem 'inherited_resources', '>=1.1.2'
gem 'will_paginate', '>=3.0.pre2'
gem 'devise', '>=1.1.2'
gem 'simple_form'
gem 'show_for'
gem "mongo_ext" 
gem "mongoid", "2.0.0.beta17"
gem "bson_ext", "1.0.7"

gem 'rspec', '>=2.0.0.beta.20', :group => :test
gem 'rspec-rails', '>=2.0.0.beta.20', :group => :test
gem "factory_girl_rails", :group => :test
gem 'remarkable', '>=4.0.0.alpha4', :group => :test
gem 'remarkable_activemodel', '>=4.0.0.alpha4', :group => :test
gem 'remarkable_activerecord', '>=4.0.0.alpha4', :group => :test

gem 'cucumber', ">=0.8.5", :group => :cucumber
gem 'cucumber-rails', ">=0.3.2", :group => :cucumber
gem 'capybara', :group => :cucumber
gem 'capybara-envjs', :group => :cucumber
gem 'database_cleaner', ">=0.5.2", :group => :cucumber

gem "newrelic_rpm", ">=2.12.3", :group => :production

gem 'rails3-generators', :git => "git://github.com/indirect/rails3-generators.git"

application  <<-GENERATORS 
config.generators do |g|
  g.orm :mongoid
  g.test_framework  :rspec, :fixture => true, :views => false
  g.fixture_replacement :factory_girl, :dir => "spec/support/factories"
end
GENERATORS

run "bundle install"

plugin 'asset_packager', :git => 'git://github.com/sbecker/asset_packager.git'

generate "rspec:install"
generate "cucumber:install --capybara --rspec"
generate "simple_form:install"
generate "show_for_install"
generate "devise:views"
generate "devise User"
generate "mongoid:config"

get "http://github.com/rails/jquery-ujs/raw/master/src/rails.js", "public/javascripts/rails.js"
get "http://github.com/laguiar/rails3_template/raw/master/gitignore" ,".gitignore" 
get "http://github.com/laguiar/rails3_template/raw/master/newrelic.yml", "config/newrelic.yml"
get "http://github.com/laguiar/rails3_template/raw/master/asset_packages.yml", "config/asset_packages.yml"
get "http://github.com/laguiar/rails3_template/raw/master/factory_girl.rb", "features/support/factory_girl.rb"
get "http://github.com/laguiar/rails3_template/raw/master/devise_steps.rb", "features/step_definitions/devise_steps.rb"
get "http://github.com/laguiar/rails3_template/raw/master/remarkable.rb", "spec/support/remarkable.rb"

git :init
git :add => '.'
 
puts "SUCCESS!"
