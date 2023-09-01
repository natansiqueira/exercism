class AssemblyLine
  PRODUCTION_PER_HOUR = 221

  def initialize(speed)
    raise ArgumentError, 'speed must be between 1 and 10' unless speed.between? 1, 10
    @speed = speed
  end

  def production_rate_per_hour
    @speed * PRODUCTION_PER_HOUR * success_rate
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end

  private

  def success_rate
    return 0.77 if @speed == 10
    return 0.8 if @speed == 9
    return 0.9 if @speed > 4

    1
  end
end
