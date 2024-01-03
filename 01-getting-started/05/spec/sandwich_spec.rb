# frozen_string_literal: true

Sandwich = Struct.new(:taste, :toppings)

RSpec.describe "An ideal sandwich" do # This block creates an EXAMPLE group. EXAMPLE group defines what is tested
  before { @sandwich = Sandwich.new("delicious", []) }

  it "is delicious" do # This is an EXAMPLE (aka: test case)
    taste = @sandwich.taste

    expect(taste).to eql("delicious") # This is an EXPECTATION. Like assertions in other frameworks
  end

  it "lets me add toppings" do
    @sandwich.toppings << "cheese"
    toppings = @sandwich.toppings

    expect(toppings).not_to be_empty
  end
end
