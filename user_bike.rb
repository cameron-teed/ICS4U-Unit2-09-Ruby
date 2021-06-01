#!/usr/bin/env ruby

##
# This program lets a user create a bike
#
# @author  Cameron Teed
# @version 1.0
# @since   2021-05-20
# frozen_string_literal: true

load 'user_vehicle.rb'

# This class makes a bike
class Bike < Vehicle

  # Setter for weight
  def set_weight
    @weight = 0.02
  end

  # Accelerates the speed by 2x
  def get_cadence
    get_speed * 13.2
  end

  # Getter for the tires
  def get_tires
    2
  end

  # Accelerates the jet by 2x
  def ring_bell
    'Ding!'
  end
end
