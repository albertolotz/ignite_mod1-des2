defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "passando uma lista com números em formato de string e strings, retorna qtd de números impar" do
      list = ["1", "3", "7", "9", "2", "22", "carro", "onibus"]

      response = ListFilter.call(list)

      expected_response = 4

      assert response == expected_response
    end
  end
end
