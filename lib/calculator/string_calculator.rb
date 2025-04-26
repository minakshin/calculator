# frozen_string_literal: true

module Calculator
  # StringCalculator is a class that adds numbers from a string
  class StringCalculator
    # add is a method that adds numbers from a string
    # @param numbers [String] the string of numbers to add
    # @return [Integer] the sum of the numbers
    def self.add(numbers)
      return 0 if numbers.empty?

      numbers.split(/[\n,]/).map(&:to_i).sum
    end
  end
end
