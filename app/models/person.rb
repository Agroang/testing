# frozen_string_literal: true

# class to test different methods
class Person < ApplicationRecord
  # this should allow the instances of Person to use the hello method (foo module)
  include Foo
  def delete_surrounding_whitespaces(string)
    string.strip
  end
end
