defmodule ElixirSayHello.Mixfile do
  use Mix.Project

  def project do
    [
      app: :elixir_say_hello,
      version: "0.0.1",
      elixir: "~> 1.18",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
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
      {:credo, git: "https://github.com/rrrene/credo.git", tag: "v1.7.12", only: [:dev, :test], runtime: false},
      {:bunt, git: "https://github.com/rrrene/bunt.git", tag: "v1.0.0", only: [:dev, :test], override: true, runtime: false},
      {:file_system, git: "https://github.com/falood/file_system.git", tag: "v1.1.1", only: [:dev, :test], override: true},
      {:jason, git: "https://github.com/michalmuskala/jason.git", tag: "v1.4.4", only: [:dev, :test], override: true},
      {:excoveralls, git: "https://github.com/parroty/excoveralls.git", tag: "v0.18.5", only: :test}
    ]
  end
end
