class Backpack
  def initialize(attributes)
    @attributes = attributes # a hash containing day_of_week and weather keys
    @items = []
    prepare
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
    day_of_week = @attributes[:day_of_week]

    if weather == 'rainy'
      standard_clothes
      @items << 'umbrella'
    else weather == 'cold'
      standard_clothes
      @items << 'jacket'
    end

    # Ensure gym shoes are added to backpack on Mondays & Thursdays
    if day_of_week == 'monday' || day_of_week == 'thursday'
      #add gym shoes to items
      @items << 'gym shoes'
    end

    # Bring a packed lunch on all weekdays
    if day_of_week != 'saturday' && day_of_week != 'sunday'
      @items << 'packed lunch'
    elsif false
      # Used to bring snacks on weekend trips, but now I just buy 'em
      @items << 'snacks'
    end
  end

  # Prints a summary packing list for Melinda's backpack
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
