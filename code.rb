require 'pry'

class Ingredient

  attr_accessor :quantity, :unit, :name

  def initialize(quantity, unit, name)
    @quantity = quantity.to_f
    @unit = unit.to_s
    @name = name.to_s
  end

  def summary
    "#{@quantity} #{@unit} #{@name}"
  end

end

# ingredient = Ingredient.new(47.0, "lb(s)", "Brussels Sprouts")
# puts ingredient.ing_summary


class Recipe

  attr_accessor :name, :ingredients, :instructions #:ingredient_list, :instruction_list

  def initialize(name, ingredients, instructions)
    # @ingredient_list = []
    # @instruction_list = []
    @name = name
    @instructions = instructions
    @ingredients = ingredients

    # @ingredients.each do |item|
    #   @ingredient_list << "- #{item.summary}"
    # end
    #
    # @instructions.each do |item|
    #   @instruction_list << "#{@instructions.index(item) +1}. #{item}"
    # end

  end

  def print_ingredients
    list = ""
    @ingredients.each do |item|
      list += "- #{item.summary}\n"
    end
    list

    # @ingredient_list.join("\n")
  end

  def print_instructions
    list = ""
    @instructions.each_with_index do |item, index|
      list += "#{index + 1}. #{item}\n"
    end
    list
    # @instruction_list.join("\n")
  end

  def summary
    "Name: #{name}\n\nIngredients:\n#{print_ingredients}\nInstuctions:\n#{print_instructions}"
  end

end

sprouts = Recipe.new("Roasted Brussels Sprouts",
    [
    Ingredient.new(1.5, "lb(s)", "Brussels sprouts"),
    Ingredient.new(3.0, "tbspn(s)", "Good olive oil"),
    Ingredient.new(0.75, "tspn(s)", "Kosher salt"),
    Ingredient.new(0.5, "tspn(s)", "Freshly ground black pepper")
    ],
    [
    "Preheat oven to 400 degrees F.",
    "Cut off the brown ends of the Brussels sprouts.",
    "Pull off any yellow outer leaves.",
    "Mix them in a bowl with the olive oil, salt and pepper.",
    "Pour them on a sheet pan and roast for 35 to 40 minutes.",
    "They should be until crisp on the outside and tender on the inside.",
    "Shake the pan from time to time to brown the sprouts evenly.",
    "Sprinkle with more kosher salt ( I like these salty like French fries).",
    "Serve and enjoy!"
    ])

puts sprouts.summary
binding.pry
