# include Rails::Generators

module Rur
  module Produce
    def parse_routes(targets)
      return [] if targets.blank?

      if targets.include?(',')
        targets.gsub(/[[:space:]]/, '').split(',')
      else
        targets.split(' ')&.compact
      end
    end

    def r_produce(target)
      dir =
        case target
        when 'app'
          'app'
        when 'models', 'model'
          'app/models'
        when 'controllers', 'controller'
          'app/contollers'
        when 'views', 'view'
          'app/views'
        when 'config'
          'config'
        when 'lib'
          'lib'
        when 'db'
          'db'
        when '.'
          ''
        else
          false
        end

      # TODO: catch error here!
      return unless dir

      `rubocop #{Rails.root}/#{dir}/ --format html -o app/views/rur/#{target}.html.erb`
    end
  end
end
