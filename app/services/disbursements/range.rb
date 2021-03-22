class Range
  attr_accessor :amount, :fee
  def initialize(amount, fee)
    @amount = amount
    @fee = fee
  end

  INFERIOR = new(0, 0.01)
  FIRST = new(50, 0.0095)
  SECOND = new(300, 0.0085)

  class << self
    private :new
  end
end
