#!/usr/bin/env ruby

##
# This program lets a user create a truck and a bike.
#
# @author  Cameron Teed
# @version 1.0
# @since   2021-05-20
# frozen_string_literal: true

load 'user_vehicle.rb'
load 'user_truck.rb'
load 'user_bike.rb'

begin
  # Creates the bike colour
  puts 'Enter the colour you wish your bike to be: '
  bike_colour = gets.chomp
  user_bike = Bike.new(bike_colour)
  puts
  puts "Your bikes colour is: #{user_bike.get_colour}"

  # Creates the truck colour
  puts 'Enter the colour you wish your truck to be: '
  truck_colour = gets.chomp
  user_truck = Truck.new(truck_colour)
  puts
  puts "Your trucks colour is: #{user_truck.get_colour}"

  # Asks user to input colour and license for first car
  puts 'Enter the license plate number of the truck: '
  license_input = gets.chomp
  user_truck.set_license(license_input)
  puts

  puts "Your trucks plate is: #{user_truck.get_license}"
  puts

  # Outputs the bell
  puts 'Ringing the bell of the bike...'
  puts user_bike.ring_bell
  puts

  # Outputtign the weight
  user_bike.set_weight
  puts "Your bike has #{user_bike.get_tires} tires."
  user_truck.set_weight
  puts "Your truck has #{user_truck.get_tires} tires."
  
  puts
  puts "Your bike weighs #{user_bike.get_weight} Tonnes."
  puts "Your truck weighs #{user_truck.get_weight} Tonnes"

  # Asks user to input the speed
  puts
  puts 'You go for a bike ride. How fast would you like to bike (mph): '
  bike_speed = gets.chomp.to_f
  user_bike.accelerate(bike_speed)
  puts "You accelerate up to #{user_bike.get_speed}mph"
  puts "Current Cadence: #{user_bike.get_cadence}rpm"

  # Asks user to input the speed
  puts
  puts 'You go for a bike ride. How fast would you like to bike (mph): '
  bike_speed = gets.chomp.to_i
  user_bike.decelerate(bike_speed).to_f
  puts "Your current speed: #{user_bike.get_speed}mph"
  puts "Current Cadence: #{user_bike.get_cadence}rpm"

  # Asks user to input the speed
  puts
  puts 'You reach your home and begin to drive your truck. How much do you accelerate by? '
  truck_speed = gets.chomp.to_f
  user_truck.accelerate(truck_speed)
  puts "You accelerate up to #{user_truck.get_speed}mph"
  puts

  # Asks user to input the speed
  puts 'You want to stop, how many pound feet of air would you like to use to stop?: '
  truck_stop = gets.chomp.to_i
  puts "Your current speed: #{user_truck.provide_air(truck_stop)}mph"
  puts
  puts 'Done.'
rescue StandardError
  puts "Error"
end
