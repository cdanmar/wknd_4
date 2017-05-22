# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

class SimpleCalculator

  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

end

class FancyCalculator 

  def add(first_number, second_number)
    SimpleCalculator.new.add(first_number, second_number)
  end

  def subtract(first_number, second_number)
    SimpleCalculator.new.subtract(first_number, second_number)
  end

  def multiply(first_number, second_number)
    SimpleCalculator.new.multiply(first_number, second_number)
  end

  def divide(first_number, second_number)
    SimpleCalculator.new.divide(first_number, second_number)
  end

  def square_root(number)
    Math.sqrt(number)
  end

end

# Copy your driver code from the previous exercise below:

adding = FancyCalculator.new.add(1, 2)
p adding

sqr = FancyCalculator.new.square_root(4)
p sqr

dividing = FancyCalculator.new.divide(8, 2)
p dividing