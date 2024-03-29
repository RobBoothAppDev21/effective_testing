# frozen_string_literal: true

class Tea
  def flavor
    :earl_grey
  end

  def temperature
    210
  end
end

RSpec.configure do |config|
  config.filter_run_when_matching(focus: true)
  config.example_status_persistence_file_path = "spec/examples.txt"
end

RSpec.describe Tea do
  let(:tea) { Tea.new }

  it "tastes like Earl Grey" do
    expect(tea.flavor).to be :earl_grey
  end

  it "is hot" do
    expect(tea.temperature).to be > 200.0
  end
end