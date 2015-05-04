class Ticket
  attr_accessor :movie, :day, :base_price
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
    if @day == "Saturday" || @day == "Sunday"
      weekend = true;
    else 
      weekend = false;
    end
  end

  def new_movie?
    ["Avengers", "Harry Potter", "Lord of the Rings", "Star Wars"].include?(@movie)
    
  end
end
