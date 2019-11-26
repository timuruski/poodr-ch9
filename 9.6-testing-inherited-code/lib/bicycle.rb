class Bicycle
  attr_reader :size, :chain, :tire_size

  def initialize(**opts)
    @size = opts[:size]
    @chain = opts[:chain] || default_chain
    @tire_size = opts[:tire_size] || default_tire_size
    post_initialize(opts)
  end

  def spares
    {
      tire_size: tire_size,
      chain: chain,
    }.merge(local_spares)
  end

  def default_tire_size
    raise "Implement default_tire_size"
  end

  def default_chain
    "11-speed"
  end

  def local_spares
    {}
  end

  def post_initialize(opts)
    # Subclassses may override
  end
end
