# frozen_string_literal: true

class VideoGame
  attr_accessor :weapon

  def initialize(name, dressColor, weapon)
    @name = name,
            @dressColor = dressColor,
            @weapon = weapon
  end
end

naruto = VideoGame.new('Naruto', 'orange', 'Kunai')

sasuke = VideoGame.new('sasuke', 'blue', 'eyes')

p naruto.weapon
p sasuke.weapon
