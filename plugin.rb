# name: home-pages
# about: support plugin for home pages theme component that extends landing pages plugin
# email contacts: merefield@gmail.com
# version: 0.21
# authors: Robert Barrow
# url: https://github.com/merefield/discourse-home-pages

enabled_site_setting :home_pages_enabled

module ::DiscourseHomePages
  PLUGIN_NAME = "home-pages"
end

after_initialize do
  %w(
    ../lib/home_pages/engine.rb
    ../app/controllers/home_pages/dynamic_page.rb
    ../app/controllers/home_pages/simple_page.rb
    ../config/routes.rb
  ).each do |path|
    load File.expand_path(path, __FILE__)
  end
end
