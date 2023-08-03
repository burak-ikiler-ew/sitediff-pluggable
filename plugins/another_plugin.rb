require_relative '../plugin_interface'

class AnotherPlugin
  include PluginInterface

  def on_something_done
    puts "AnotherPlugin: Something done in the main application!"
  end
end