#!/usr/bin/env ruby

##
# This program lets the user create a car
#
# @author  Cameron Teed
# @version 1.0
# @since   2021-05-20
# frozen_string_literal: true

# This class creates a vehicle
class Vehicle
  # Initializes the variables
  def initialize(colour_input)
    @weight = 0
    @colour = colour_input
    @number_of_doors = 4
    @max_speed = 200
    @vehicle_speed = 0
    @license_plate = ''
  end

  # Setter for weight
  def set_weight
    @weight = 500
  end

  # setter for the colour
  def set_colour(user_colour)
    @colour = user_colour
  end

  def get_weight
    @weight
  end

  # getter for colour
  def get_colour
    @colour
  end

  # Setter for speed
  def set_speed
    @vehicle_speed
  end

  # Getter for speed
  def get_speed
    @vehicle_speed
  end

  # getter for acceleration
  def accelerate(user_increase)
    raise ArgumentError if @vehicle_speed + user_increase > @max_speed

    @vehicle_speed += user_increase
  end

  # getter for deceleration
  def decelerate(user_decrease)
    raise ArgumentError if (@vehicle_speed - user_decrease).negative?

    @vehicle_speed -= user_decrease
  end
end
