# frozen_string_literal: true

class SortingHat
  ClassificationModel = OmniCat::Classifiers::Bayes.new

  attr_accessor :categodies

  def initialize(catigories: Categody.all, train_batch: Task.all)
    @catigories = catigories
    @train_batch = train_batch
  end

  def call(tasks)
    catigories.each { |cat| ClassificationModel.add_category(cat.id) }
    tasks.to_s
  end
end
