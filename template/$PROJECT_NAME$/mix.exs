defmodule <%= @project_name_camel_case %>.Mixfile do
  use Mix.Project

  @name :<%= @project_name %>
  @version "0.1.0"

  @deps [
    # { :earmark, ">0.1.5" },
    # { :ex_doc,  "1.2.3", only: [ :dev, :test ] },
    # { :my_app:  path: "../my_app" },
  ]

  @aliases []

  # ------------------------------------------------------------

  def project do
    in_production = Mix.env() == :prod

    [
      app: @name,
      version: @version,
      elixir: ">= <%= @elixir_version %>",
      deps: @deps,
      aliases: @aliases,
      elixirc_paths: ["lib"],
      build_embedded: in_production
    ]
  end

  def application do
    [
      mod: {<%= @project_name_camel_case %>, []},
      extra_applications: [
        :logger
      ]
    ]
  end
end
