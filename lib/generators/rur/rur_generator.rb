class RurGenerator < Rails::Generators::Base
  source_root File.expand_path('templates', __dir__)

  def copy_rur_file
    copy_file "high_voltage.rb", "config/initializers/high_voltage.rb"
    copy_file "home.html.erb", "app/views/rur/home.html.erb"
  end

  def add_rur_routes
    rur_route =  "  scope :rur do\n"
    rur_route += "    \# Rur for all folders\n"
    rur_route += "    get '/' => 'high_voltage/pages#show', id: 'home'\n"
    rur_route += "  end\n"

    route(rur_route)
  end

  def append_rur_gitignore
    append_to_file('.gitignore', "\n# Rur views\napp/views/rur")
  end

end
