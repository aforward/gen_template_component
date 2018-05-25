defmodule GenTemplateComponent.Mixfile do
  use Mix.Project

  @name :gen_template_component
  @version "0.1.0"

  @deps [
    {:mix_templates, ">0.0.0", app: false},
    {:version_tasks, "~> 0.11"},
    {:ex_doc, ">0.0.0", only: [:dev, :test]}
  ]

  @maintainers ["Andrew Forward <aforward@gmail.com>"]
  @github "https://github.com/aforward/#{@name}"
  @home @github

  @description """
  A template for building Elixir components (projects that hold state).

  This project is an extremely paired down version of `mix new «project_name» --sup`
  based on Dave Thomas' view of simplifying our Elixir code.  Let's see
  how this plays out.
  """

  @docs [
    main: "GenTemplateComponent",
    extras: ["README.md"]
  ]

  @aliases []

  # ------------------------------------------------------------

  def project do
    in_production = Mix.env() == :prod

    [
      app: @name,
      version: @version,
      deps: @deps,
      aliases: @aliases,
      elixir: "~> 1.6",
      package: package(),
      source_url: @github,
      homepage_url: @home,
      docs: @docs,
      description: @description,
      build_embedded: in_production,
      start_permanent: in_production
    ]
  end

  defp package do
    [
      name: @name,
      files: [
        "lib",
        "mix.exs",
        "README.md",
        "LICENSE.md",
        "template",
        "template/$PROJECT_NAME$/.gitignore",
        "template/$PROJECT_NAME$/.formatter.exs"
      ],
      maintainers: @maintainers,
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => @github
      }
      #      extra:       %{ "type" => "a_template_for_mix_gen" },
    ]
  end
end
