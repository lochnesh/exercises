defmodule ElixirSayHelloTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  doctest ElixirSayHello

  test "greeting is printed with name" do
    assert capture_io([input: "Skyler"], fn ->
      ElixirSayHello.main([])
    end) == "What is your name? Hello, Skyler, nice to meet you!\n"
  end

  test "greeting trims new line" do
    assert capture_io([input: "Skyler\n"], fn ->
      ElixirSayHello.main([])
    end) == "What is your name? Hello, Skyler, nice to meet you!\n"
  end
end
