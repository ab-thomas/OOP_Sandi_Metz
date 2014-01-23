class Gear
  attr_reader :chainring, :cog, :rim, :tyre
   def initialize(chainring, cog, rim, tyre)
    @chainring = chainring
    @cog       = cog
    @rim       = rim
    @tyre      = tyre
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * diameter
  end

  def diameter
    (rim + (tyre * 2))
  end
end


puts Gear.new(52, 11, 26, 1.5).gear_inches                      # 137.0909090909091
puts Gear.new(52, 11, 24, 1.25).gear_inches                     # 125.27272727272728





