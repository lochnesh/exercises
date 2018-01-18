defmodule ElixirCountCharacters.Mixfile do
  use Mix.Project

  def project do
    [app: :elixir_count_characters,
     version: "0.0.1",
     elixir: "~> 1.5",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     escript: [main_module: ElixirCountCharacters],
     deps: deps()]
  end

    def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [{:credo, "~> 0.4", only: [:dev, :test]}]
  end
end
