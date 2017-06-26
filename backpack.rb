class Backpack
  def initialize(attributes)
    @attributes = attributes # a hash containing day_of_week and weather keys
    @items = []
    prepare
    extra_items
  end

  def items
    @items
  end

  def standard_clothes
    @items << 'pants'
    @items << 'shirt'
  end

  def prepare
    weather = @attributes[:weather]
    if weather == 'rainy'
      @items << 'umbrella'
    elsif weather == 'cold'
      @items << 'jacket'
    else standard_clothes
    end
  end

  def extra_items
    day_of_week = @attributes[:day_of_week]
    if day_of_week == 'monday' || day_of_week == 'thursday'
      @items << 'gym shoes'
    end

    if day_of_week != 'saturday' && day_of_week != 'sunday'
      @items << 'packed lunch'
    end
  end

  def packing_list
    output = []
    output << "Melinda, here's your packing list!"
    output << "Day: #{@attributes[:day_of_week]}, Weather: #{@attributes[:weather]}"
    output << ""

    @items.each do |item|
      output << "- #{item}"
    end
    output.join("\n")
  end

end
