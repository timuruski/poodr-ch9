class Gear
  attr_reader :chainring, :cog, :rim, :tire
  def initialize(chainring:, cog:, wheel:)
    @chainring = chainring
    @cog = cog
    @wheel = wheel
  end

  def gear_inches
    ratio * @wheel.diameter
  end

  def ratio
    chainring / cog.to_f
  end
end
