require_relative '../../../app/api'

module ExpenseTracker
  RSpec.describe API do
    describe 'POST /expenses' do
      context "when the expense is successfully recorded" do
        it "returns the expnese id"
        it "responds with a 200 (OK)"
      end

      context "when the expense fails validation" do
        it "returns an error message"
        it "responnds with a 422 (Unprocessable entity)"
      end
    end
  end
end