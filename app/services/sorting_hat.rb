# frozen_string_literal: true

class SortingHat
  attr_reader :data, :model

  delegate :categories, :batch, to: :data

  def initialize(data: TrainingData.new, model: OmniCat::Classifiers::Bayes.new)
    @data = data
    @model = model

    train
  end

  def call(task)
    result = model.classify(task.to_s)
    result.scores.map do |slug, res|
      { category_slug: slug, value: res.percentage }
    end
  end

  def train
    categories.each do |cat|
      model.add_category(cat.slug)
      model.train_batch(cat.slug, batch[cat.slug])
    end
  end
end
