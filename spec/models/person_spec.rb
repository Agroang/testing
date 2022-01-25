# frozen_string_literal: true

require 'rails_helper'
# require './app/models/person' I don't need this as I am using the testing for Person here

RSpec.describe Person, type: :model do
  test_guy = Person.new(first_name: 'Peter', last_name: 'Rock', age: 35)

  # test an instance method inside the person class
  it 'should get rid of both leading and trailing whitespaces' do
    expect(test_guy.delete_surrounding_whitespaces('  testing example         ')).to eq('testing example')
    expect(test_guy.delete_surrounding_whitespaces('          will this work!?   ')).to eq('will this work!?')
  end

  # tests a module method inside the Person class
  it 'should return the string hello' do
    expect(test_guy.hello).to eq('hello')
  end
end
