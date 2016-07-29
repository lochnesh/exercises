defmodule ElixirAreaOfRoom.Mixfile do
  use Mix.Project

  def project do
    [app: :elixir_area_of_room,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     escript: [main_module: ElixirAreaOfRoom],
     deps: deps()]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [{:credo, "~> 0.4", only: [:dev, :test]}]
  end
end
