class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end
  

  def self.total_price
    # prices = self.all.map do |painting|
    #   painting.price
    # end
    # prices.sum

    self.all.sum(&:price)

    # sum = 0
    # self.all.each do |painting|
    #   sum += painting.price
    # end
    # sum

  end

end
