# test_artifact.rb
require 'minitest/autorun'
require_relative 'artifact'

class TestDefault < Minitest::Test
  def test_with_string
    assert_equal({ result: "hello" }, default("hello"))
  end

  def test_with_number
    assert_equal({ result: 42 }, default(42))
    assert_equal({ result: 3.14 }, default(3.14))
  end

  def test_with_hash_without_data_attribute
    input = { name: "John", age: 30 }
    assert_equal({ result: input }, default(input))
  end

  def test_with_hash_with_symbol_data_attribute
    input = { data: "important info", other: "value" }
    assert_equal({ result: "important info" }, default(input))
  end

  def test_with_hash_with_string_data_attribute
    input = { "data" => "string key data", other: "value" }
    assert_equal({ result: "string key data" }, default(input))
  end

  def test_with_nil
    assert_equal({ result: nil }, default(nil))
  end

  def test_with_array
    assert_equal({ result: [1, 2, 3] }, default([1, 2, 3]))
  end

  def test_with_boolean
    assert_equal({ result: true }, default(true))
    assert_equal({ result: false }, default(false))
  end
end
