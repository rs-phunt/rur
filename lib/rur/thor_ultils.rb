class Rur::ThorUltils < Thor
  include Thor::Actions

  # Prepend route into config/routes.rb
  no_commands do
    def prepend_rur_route(route)
      route_path  = "    \# Rur for #{route}\n"
      route_path += "    get '#{route}' => 'high_voltage/pages#show', id: '#{route}'\n"

      insert_into_file("#{Rails.root}/config/routes.rb", route_path, after: "scope :rur do\n")
    end
  end
end
