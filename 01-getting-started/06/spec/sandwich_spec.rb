# frozen_string_literal: true

Sandwich = Struct.new(:taste, :toppings)

RSpec.describe "An ideal sandwich" do # This block creates an EXAMPLE group. EXAMPLE group defines what is tested
  def sandwich
    Sandwich.new("delicious", [])
  end

  it "is delicious" do
    taste = sandwich.taste

    expect(taste).to eql("delicious")
  end

  it "lets me add toppings" do
    sandwich.toppings << "cheese"
    toppings = sandwich.toppings

    expect(toppings).not_to be_empty
  end
end
