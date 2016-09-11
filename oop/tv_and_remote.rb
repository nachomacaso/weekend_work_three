# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

class Tv
  attr_accessor :power, :volume, :channel

  def initialize(controls_hash)
    @power = controls_hash[:power]
    @volume = controls_hash[:volume]
    @channel = controls_hash[:channel]
  end
end

class Remote < Tv
  attr_accessor :tv

  def initialize(controls_hash)
    super(controls_hash)
    @tv = controls_hash[:tv]
  end

  def toggle_power
    if @tv == "sony"
      @power = true
    end
  end

  def increment_volume
    if @tv == "sony"
      @volume += 1
    end
  end

  def decrement_volume
    if @tv == "sony"
      @volume -= 1
    end
  end

  def set_channel(new_channel)
    if @tv == "sony"
      @channel = new_channel
    end
  end
end

# Driver Code

puts "TESTING tv_and_remote"
puts

sony_tv = Remote.new(power: false, volume: 5, channel: 1, tv: "sony")

sony_tv.toggle_power

puts "TV power on?"
puts sony_tv.power
puts

if sony_tv.power == true
  puts "PASS!"
else
  puts "F"
end
puts

sony_tv.increment_volume

puts "TV volume?"
puts sony_tv.volume
puts

if sony_tv.volume == 6
  puts "PASS!"
else
  puts "F"
end
puts

sony_tv.decrement_volume

puts "TV volume?"
puts sony_tv.volume
puts

if sony_tv.volume == 5
  puts "PASS!"
else
  puts "F"
end
puts

sony_tv.set_channel(173)

puts "Set TV channel to:"
puts sony_tv.channel
puts

if sony_tv.channel == 173
  puts "PASS!"
else
  puts "F"
end
puts
