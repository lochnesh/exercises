defmodule ElixirSayHello.Mixfile do
  use Mix.Project

  def project do
    [
      app: :elixir_say_hello,
      version: "0.0.1",
      elixir: "~> 1.6",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      escript: [main_module: ElixirSayHello],
      deps: deps(),
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [coveralls: :test, "coveralls.detail": :test]
    ]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [
      {:credo, "~> 0.4", only: [:dev, :test]},
      {:excoveralls, "~> 0.8", only: :test}
    ]
  end
end
