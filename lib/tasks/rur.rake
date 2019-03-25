include Rur::Produce
require "rur/thor_ultils"

namespace :rur do
  desc "Rur produces app"
  task test: :environment do |t, args|
    binding.pry
  end

  desc "Rur produces app"
  task :produce, [:route] => :environment do |t, args|
    # routes = Rur::Produce.parse_routes(ARGV.drop(1))

    routes = ARGV.drop(1)

    if routes.blank?
      p "Rur is producing your app:[#{Rails.root}/]"
      Rur::Produce.r_produce('.')
      p "Rur produced your app:\[#{Rails.root}\/\]\n"
    else
      # dynamically writing tasks on the fly
      routes.each { |a| task a.to_sym do ; end }

      routes.each do |route|
        p "Rur is producing #{route}..."
        Rur::Produce.r_produce(route)
        Rur::ThorUltils.new.prepend_rur_route(route)
        p "Rur produced #{route}!\n"
      end
    end
  end
end
