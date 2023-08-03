class MainApplication
  def initialize
    @plugins = []
  end

  def register_plugin(plugin)
    @plugins << plugin
  end

  def do_something
    puts "Doing something in the main application."
    notify_plugins(:on_something_done)
  end

  private

  def notify_plugins(event)
    @plugins.each do |plugin|
      plugin.public_send(event) if plugin.respond_to?(event)
    end
  end
end
