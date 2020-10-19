# frozen_string_literal: true

class TrainingData
  attr_reader :batch, :categories

  def initialize(limit: 100, categories:)
    @categories = categories
    @batch = categories.each_with_object({}) do |category, memo|
      memo[category.slug] = category.tasks.limit(limit).map(&:to_s)
    end
  end
end
