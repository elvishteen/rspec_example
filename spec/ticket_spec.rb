require_relative '../ticket.rb'

describe Ticket do
  describe "#initialize" do
  	let(:ticket) { Ticket.new('Avengers', 'Monday')}
  	it "should return a base price" do
  		expect(ticket.price).to be 5
  	end
  end

  describe "#weekend" do
  	it "should be false on Monday" do
      ticket = Ticket.new('Hp','Monday')
      expect(ticket.weekend?).to be_falsey
    end

    it "should be true on Saturday" do
      ticket = Ticket.new('Hp', 'Saturday')
      expect(ticket.weekend?).to be_truthy
    end

    it "should be true on Sunday" do
      ticket = Ticket.new('Star Wars', 'Sunday')
      expect(ticket.weekend?).to be_truthy
    end

    it "should be false on Friday" do
      ticket = Ticket.new('Star Wars', 'Friday')
      expect(ticket.weekend?).to be_falsey
    end

  end


  describe "#price" do
    it "should return a number" do
      ticket = Ticket.new('Avengers', 'Saturday') 
      expect(ticket.price).to be_a(Fixnum)
    end

    it "price during weekend and new movie" do
      ticket = Ticket.new('Avengers', 'Sunday') 
      expect(ticket.price).to be 7
    end

    it "price during weekend and old movie" do
      ticket = Ticket.new('Hp','Saturday' )
      expect(ticket.price).to be 6
    end

    it "price during weekday and new movie" do
      ticket = Ticket.new('Avengers', 'Monday')
      expect(ticket.price).to be 6
    end

    it "price during weekday and old movie" do
      ticket = Ticket.new('Hp', 'Monday')
      expect(ticket.price).to be 5
    end
  end

  describe "#new_movie" do
    it "is a new movie" do
      ticket = Ticket.new('Avengers', 'Monday')
      expect(ticket.new_movie?).to be_truthy
    end
    it "is not a new movie" do
      ticket = Ticket.new('Hp', 'Monday')
      expect(ticket.new_movie?).to be_falsey
    end
  end
end
