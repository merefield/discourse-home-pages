# name: discourse-home-pages
# about: tbd
# email contacts: merefield@gmail.com
# version: 0.2
# authors: Robert Barrow
# url: https://github.com/merefield/discourse-home-pages

enabled_site_setting :home_pages_enabled

module ::DiscourseHomePages
  PLUGIN_NAME = "discourse-home-pages"
end

after_initialize do
  %w(
    ../lib/discourse_home_pages/engine.rb
    ../app/controllers/discourse_home_pages/home_page.rb
    ../app/controllers/discourse_home_pages/landing_page.rb
    ../config/routes.rb
  ).each do |path|
    load File.expand_path(path, __FILE__)
  end
end
