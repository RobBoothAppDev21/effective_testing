# frozen_string_literals: true

class API < Sinatra::Base
  def initialize(ledger:)
    @ledger = ledger
    super() # rest of initialization from Sinatra
  end
end