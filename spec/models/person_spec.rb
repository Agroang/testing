# frozen_string_literal: true

require 'rails_helper'
# require './app/models/person' I don't need this as I am using the testing for Person here

RSpec.describe Person, type: :model do
  it 'should get rid of both leading and trailing whitespaces' do
    test_guy = Person.new(first_name: 'Peter', last_name: 'Rock', age: 35)
    expect(test_guy.delete_surrounding_whitespaces('  testing example         ')).to eq('testing example')
    expect(test_guy.delete_surrounding_whitespaces('          will this work!?   ')).to eq('will this work!?')
  end
end
