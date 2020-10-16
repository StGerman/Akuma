require 'rails_helper'

FactoryBot.factories.map(&:name).each do |factory_name|
  describe "The #{factory_name} factory" do
    subject { FactoryBot.build(factory_name) }

    it { is_expected.to be_valid }
  end
end