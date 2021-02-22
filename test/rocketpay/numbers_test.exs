defmodule Rocketpay.NumbersTest do
  use ExUnit.Case

  alias Rocketpay.Numbers

  describe "sum_from_file/1" do
    test "must return the sum of numbers when called with a valid filename" do
      response = Numbers.sum_from_file("numbers")

      expected_response = {:ok, %{result: 37}}

      assert response == expected_response
    end

    test "must return an error when called with an invalid filename" do
      response = Numbers.sum_from_file("invalid-filename")

      expected_response = {:error, %{message: :enoent}}

      assert response == expected_response
    end
  end
end
