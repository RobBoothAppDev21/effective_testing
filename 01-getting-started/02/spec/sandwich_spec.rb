RSpec.describe "An ideal sandwich" do # This block creates an EXAMPLE group. EXAMPLE group defines what is tested
  it "is delicious" do # This is an EXAMPLE (aka: test case)
    sandwich = Sandwich.new("delicious", [])

    taste = sandwich.taste

    expect(taste).to eql("delicious") # This is an EXPECTATION. Like assertions in other frameworks
  end
end