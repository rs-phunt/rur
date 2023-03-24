require 'rur/thor_ultils'

module Rur
  module Produce
    def init(test = true)
      Var = "Var"
      puts "#{Var}"
      
      return false if true
      
      "TEST return"
    end

    def r_produce(target = '.')
      dir =
        case target
        when 'app'
          'app'
        when 'models', 'model'
          'app/models'
        when 'controllers', 'controller'
          'app/controllers'
        when 'views', 'view'
          'app/views'
        when 'config'
          'config'
        when 'lib'
          'lib'
        when 'db'
          'db'
        when '.'
          target = 'home'
          ''
        else
          target
        end

      return "File/Folder [#{dir}] is not found!" unless File.exist?("#{Rails.root}/#{dir}")

      # Process
      `rubocop #{Rails.root}/#{dir}/ --format html -o app/views/rur/#{target}.html.erb`
      Rur::ThorUltils.new.prepend_rur_route(target)

      if target != 'home'
        puts "Rur produced [#{target}] !\n"
      else
        puts "Rur produced your app: [#{Rails.root}/] !\n"
      end
    end
  end
end
