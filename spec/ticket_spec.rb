require_relative '../ticket.rb'

describe Ticket do
  # put some tests here for each method in Ticket

  describe "#price" do
    let(:ticket) { Ticket.new('Avengers', 'Saturday') }

    it "should return a number" do
      ticket.price.should be_a(Fixnum)
    end
  end
end
