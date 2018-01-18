defmodule ElixirPrintingQuotes.Mixfile do
  use Mix.Project

  def project do
    [app: :elixir_printing_quotes,
     version: "0.0.1",
     elixir: "~> 1.5",
     elixirc_paths: elixirc_paths(Mix.env),
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     escript: [main_module: ElixirPrintingQuotes],
     deps: deps()]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [
      {:credo, "~> 0.4", only: [:dev, :test]},
      {:mox, "~> 0.3", only: :test}
    ]
  end

  defp elixirc_paths(:test), do: ["test/support", "lib"]
  defp elixirc_paths(_),     do: ["lib"]

end
