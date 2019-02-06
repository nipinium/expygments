defmodule Pygments.Mixfile do
  use Mix.Project

  def project do
    [
      app: :pygments,
      version: "0.1.1",
      elixir: "~> 1.8",
      start_permanent: Mix.env == :prod,
      deps: deps()
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
      {:erlport, "~> 0.10"}
    ]
  end
end
