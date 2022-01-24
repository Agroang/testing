# frozen_string_literal: true

# class to test different methods
class Person < ApplicationRecord
  def delete_surrounding_whitespaces(string)
    string.strip
  end
end
