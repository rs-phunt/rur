include Rur::Produce

namespace :rur do
  desc "Rur produces app"
  task produce: :environment do
    targets = ARGV.drop(1)

    Rur::Produce.r_produce() and return if targets.blank?

    # dynamically writing tasks on the fly
    targets.each { |target| task target.to_sym do ; end }

    targets.each { |target| puts Rur::Produce.r_produce(target) }
  end
end
