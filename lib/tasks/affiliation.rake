# frozen_string_literal: true

namespace :affiliation do
  desc 'calculate fiting for assignment'
  task calculate: :environment do
    data = TrainingData.new(categories: Person.where(suggest: true))
    hat = SortingHat.new(data: data)

    Task.all.each do |task|
      results = hat.call(task.to_s)
      puts results.inspect

      results.each do |r|
        person = Person.find_by!(slug: r[:category_slug])
        value  = r[:value]
        Affiliation.find_or_initialize_by(affiliatable: person, task: task).update!(value: value)
      end
    end
  end
end
