class Ticket
  def initialize(movie, day)
     @movie = movie
     @day   = day
     @base_price = 5
  end

  def price
    @price = @base_price
    @price += 1 if weekend?
    @price += 1 if new_movie?
    @price
  end

  def weekend?
  end

  def new_movie?
  end
end
