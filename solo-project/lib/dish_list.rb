class DishList
  def initialize
    @items = []
  end 

  def add(item)
    @items << item 
  end 

  def list 
    @items.select(&:available?)
  end 

  def all
    @dishes
  end 
end 
