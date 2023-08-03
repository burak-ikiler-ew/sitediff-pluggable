require_relative 'main_application'

# Load plugins dynamically
Dir["./plugins/*.rb"].each { |file| require file }

app = MainApplication.new
app.register_plugin(SamplePlugin.new)
app.register_plugin(AnotherPlugin.new)

app.do_something
