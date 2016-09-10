# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end

  def change_room(new_number)
    @room_number = new_number
  end
end

# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method

puts "TESTING hotel_reservation"
puts

hotel_reservation = HotelReservation.new(customer_name: "John Smith", 
                                         date: "9/9/2016",
                                         room_number: 206)

hotel_reservation.change_room(301)

puts "New Room Number:"
puts hotel_reservation.room_number
puts

if hotel_reservation.room_number == 301
  puts "PASS!"
else
  puts "F"
end
puts

hotel_reservation.add_a_fridge

puts "Hotel amenities: "
puts hotel_reservation.amenities
puts

if hotel_reservation.amenities.include?("fridge")
  puts "PASS!"
else
  puts "F"
end
puts

hotel_reservation.add_a_crib

puts "Hotel amenities: "
puts hotel_reservation.amenities
puts

if hotel_reservation.amenities.include?("crib")
  puts "PASS!"
else
  puts "F"
end
puts

hotel_reservation.add_a_custom_amenity("jacuzzi")

puts "Hotel amenities: "
puts hotel_reservation.amenities
puts

if hotel_reservation.amenities.include?("jacuzzi")
  puts "PASS!"
else
  puts "F"
end
puts
