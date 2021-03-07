defmodule MakeupDemo.Mixfile do
  use Mix.Project

  def project do
    [
      app: :makeup_demo,
      version: "0.2.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env == :prod,
      deps: deps(),
      docs: [extras: ["README.md"]],
      escript: escript()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :makeup]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:makeup, "~> 1.0"},
      {:makeup_elixir, "~> 0.15.0"},
      {:makeup_html, git: "https://github.com/javiergarea/makeup_html", branch: "main"},
      #{:ex_doc, path: "../ex_doc", only: :dev, runtime: false}
    ]
  end

  defp escript do
    [main_module: MakeupDemo]
  end
end
