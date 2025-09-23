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
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.html": :test,
        "coveralls.json": :test
      ]
    ]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [
      {:bunt, git: "https://github.com/rrrene/bunt.git", tag: "v1.0.0", override: true, only: [:dev, :test]},
      {:certifi, git: "https://github.com/certifi/erlang-certifi.git", tag: "2.15.0", override: true, only: :test},
      {:credo, git: "https://github.com/rrrene/credo.git", tag: "v1.7.12", only: [:dev, :test], runtime: false},
      {:excoveralls, git: "https://github.com/parroty/excoveralls.git", tag: "v0.18.5", only: :test, runtime: false},
      {:file_system, git: "https://github.com/falood/file_system.git", tag: "v1.1.1", override: true, only: [:dev, :test]},
      {:hackney, git: "https://github.com/benoitc/hackney.git", tag: "1.25.0", override: true, only: :test},
      {:idna, git: "https://github.com/benoitc/erlang-idna.git", tag: "6.1.1", override: true, only: :test},
      {:jason, git: "https://github.com/michalmuskala/jason.git", tag: "v1.4.4", override: true, only: [:dev, :test]},
      {:metrics, git: "https://github.com/benoitc/erlang-metrics.git", tag: "1.2.0", override: true, only: :test},
      {:mimerl, git: "https://github.com/benoitc/mimerl.git", tag: "1.4.0", override: true, only: :test},
      {:parse_trans, git: "https://github.com/uwiger/parse_trans.git", tag: "3.4.1", override: true, only: :test},
      {:ssl_verify_fun, git: "https://github.com/deadtrickster/ssl_verify_fun.erl.git", tag: "1.1.7", override: true, only: :test},
      {:unicode_util_compat,
       git: "https://github.com/benoitc/unicode_util_compat.git",
       ref: "c31ae582e1496d2f65586a007b132dbcd6778479",
       override: true,
       only: :test}
    ]
  end
end
