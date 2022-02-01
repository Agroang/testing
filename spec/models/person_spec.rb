# frozen_string_literal: true

require 'rails_helper'
# require './app/models/person' I don't need this as I am using the testing for Person here

RSpec.describe Person, type: :model do
  test_guy = Person.new(first_name: 'Peter', last_name: 'Rock', age: 35)

  # test an instance method inside the person class
  it 'gets rid of both leading and trailing whitespaces' do
    expect(test_guy.delete_surrounding_whitespaces('  testing example         ')).to eq('testing example')
    expect(test_guy.delete_surrounding_whitespaces('          will this work!?   ')).to eq('will this work!?')
  end

  # tests a module method inside the Person class
  it 'returns the string hello' do
    expect(test_guy.hello).to eq('hello')
  end

  # tests the full_name method to return the full name
  it 'returns the full of the instance as first_name last_name' do
    expect(test_guy.full_name(test_guy.first_name, test_guy.last_name)).to eq('Peter Rock')
  end

  # test if the instance has the module inside
  it 'test if the instance has the module inside' do
    expect(test_guy).to be_a_kind_of(Foo) # Foo is a module included in Person
  end

  # test if the instance is of the class Person
  it 'test if the instance is of the Person class' do
    expect(test_guy).to be_instance_of(Person)
  end
end
