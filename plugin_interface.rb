module PluginInterface
  def on_something_done
    raise NotImplementedError, "Plugin must implement on_something_done"
  end
end
