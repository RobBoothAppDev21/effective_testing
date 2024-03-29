# frozen_string_literal: true

class Coffee
  def ingredients
    @ingredients ||= []
  end

  def add(ingredient)
    ingredients << ingredient
  end

  def price
    1.00 + ingredients.size * 0.25
  end
end

RSpec.configure do |config|
  config.filter_run_when_matching(focus: true)
  config.example_status_persistence_file_path = 'spec/examples.txt'
end

RSpec.describe 'A cup of coffee' do
  let(:coffee) { Coffee.new }

  it "costs $1" do
    expect(coffee.price).to eql(1.00)
  end

  context "with milk", focus: true do
    before { coffee.add :milk }

    it "cost $1.25" do
      expect(coffee.price).to eq(1.25)
    end

    it "is light in color" do
      pending "Color not implemented yet"
      expect(coffee.color).to be(:light)
    end

    it "is cooler than 200 degree Fahrenheit" do
      pending "Temperature not implemented yet"
      expect(coffee.temperature).to be < 200.0
    end
  end
end
