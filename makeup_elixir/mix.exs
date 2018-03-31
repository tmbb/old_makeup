defmodule Makeup.Languages.Elixir.Mixfile do
  use Mix.Project

  def project do
    [
      app: :makeup_elixir,
      version: "0.3.0",
      elixir: "~> 1.0",
      start_permanent: Mix.env == :prod,
      deps: deps(),
      # Docs
      name: "Makeup Elixir Lexer",
      source_url: "https://github.com/tmbb/makeup_elixir",
      homepage_url: "https://github.com/tmbb/makeup_elixir",
      docs: [main: "Makeup.Lexers.ElixirLexer", # The main page in the docs
             extras: ["README.md"]],
      # Package
      package: package(),
      description: description()
    ]
  end

  defp description do
    """
    Elixir lexer for the Makeup syntax highlighting library
    """
  end

  defp package do
    [
      name: :makeup_elixir,
      licenses: ["BSD"],
      maintainers: ["Tiago Barroso <tmbb@campus.ul.pt>"],
      links: %{"GitHub" => "https://github.com/tmbb/makeup_elixir"}
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:makeup, path: "../makeup"},
      {:benchee, "~> 0.12.1", only: [:test, :dev]},
      {:ex_doc, "~> 0.16.3", only: :dev, runtime: false}
    ]
  end
end
