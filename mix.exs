defmodule Pygments.Mixfile do
  use Mix.Project

  def project do
    [
      app: :pygments,
      version: "1.0.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      name: "ExPygments",
      source_url: source_url()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {Pygments, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:erlport, "~> 0.10"},
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp source_url, do: "https://github.com/nipinium/expygments"

  defp description do
    "Syntax highlight using Python's [Pygments](http://pygments.org) library"
  end

  defp package do
    [
      licenses: ["UNLICENSE"],
      links: %{"GitHub" => source_url()}
    ]
  end
end
