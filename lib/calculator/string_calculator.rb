# frozen_string_literal: true

module Calculator
  # StringCalculator is a class that adds numbers from a string
  class StringCalculator
    class NegativeNumberError < StandardError; end
    # add is a method that adds numbers from a string
    # @param numbers [String] the string of numbers to add
    # @return [Integer] the sum of the numbers
    def self.add(numbers)
      return 0 if numbers.empty?

      numbers = numbers.scan(/-?\d+/).map(&:to_i)
      negatives = numbers.select(&:negative?)
      raise NegativeNumberError, "Negatives numbers not allowed #{negatives.join(', ')}" if negatives.any?

      numbers.sum
    end
  end
end
