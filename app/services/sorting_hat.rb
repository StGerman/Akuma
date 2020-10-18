# frozen_string_literal: true

class SortingHat
  attr_accessor :categories, :train_batch, :model

  def initialize(categories: Category.all, train_batch: Task.all, model: OmniCat::Classifiers::Bayes.new)
    @categories = categories
    @train_batch = train_batch
    @model = model

    train
  end

  def call(task)
    result = model.classify(task.to_s)
    # for many-to-many relation better use `result.scores.map { |_, res| [res.key, res.percentage] }.to_h`
    result.top_score.key
  end

  def train
    categories.each do |cat|
      model.add_category(cat.slug)
      batch = train_batch.where(category: cat).map(&:to_s)
      model.train_batch(cat.slug, batch)
    end
  end
end
