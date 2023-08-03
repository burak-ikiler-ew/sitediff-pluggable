require_relative '../plugin_interface'

class SamplePlugin
  include PluginInterface

  def on_something_done
    puts "SamplePlugin: Something done in the main application!"
  end
end