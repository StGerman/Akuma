# frozen_string_literal: true

class TrainingData
  attr_reader :batch, :categories

  def initialize(limit: 100)
    @categories = Category.where(suggest: true)
    @batch = categories.where(suggest: true).each_with_object({}) do |category, memo|
      memo[category.slug] = category.tasks.limit(limit).map(&:to_s)
    end
  end
end
