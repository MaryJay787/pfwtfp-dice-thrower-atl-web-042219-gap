require 'spec_helper'

describe 'throw_dice' do
  it 'has a throw_dice method' do
    expect { throw_die }.not_to raise_error, "The `throw_dice` method was not found"
  end

  it 'it returns a number between 1 and 6' do
    expect(throw_die).to be_between(1,6), "The `throw_dice` should retunr a number between 1 and 6"
  end
end

describe 'generate_set' do
  it 'has a generate_set method' do
    expect { generate_set(10) }.not_to raise_error, "The `generate_set` method was not found"
  end

  it 'returns an array of each roll' do
    expect(generate_set(10)).to be_kind_of(Array), "The `generate_set` method did not return an array"
    expect(generate_set(10).length).to eq(10), "The `generate_set` method did not return an array of the correct length"
  end
end
