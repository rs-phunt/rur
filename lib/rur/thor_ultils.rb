class Rur::ThorUltils < Thor
  include Thor::Actions

  # Prepend route into config/routes.rb
  no_commands do
    def prepend_rur_route(route)
      route_path = %Q(\n    # Rur for #{route}\n    get '#{route}' => 'high_voltage/pages#show', id: '#{route}')

      insert_into_file(
        "#{Rails.root}/config/routes.rb",
        route_path,
        verbose: false,
        after: /scope \:rur do/
      )
    end
  end
end
