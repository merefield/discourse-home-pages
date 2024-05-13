module ::DiscourseHomePages
  class Engine < ::Rails::Engine
    engine_name PLUGIN_NAME
    isolate_namespace DiscourseHomePages
    config.autoload_paths << File.join(config.root, "lib")
  end
end
