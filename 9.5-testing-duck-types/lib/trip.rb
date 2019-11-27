class Trip
  attr_reader :bicycles, :customers, :vehicle

  def initialize(bicycles, customerss, vehicle)
    @bicycles = bicycles
    @customers = customers
    @vehicle = vehicle
  end

  def prepare(preparers)
    preparers.each do |preparer|
      preparer.prepare_trip(self)
    end
  end
end
