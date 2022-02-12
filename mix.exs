defmodule QuickcheckPlayground.MixProject do
  use Mix.Project

  def project do
    [
      app: :quickcheck_playground,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      test_pattern: "*_{test,eqc}.exs",
      deps: deps()
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
      {:eqc_ex, "~> 1.4"}
    ]
  end
end
