# Component: Templates for Elixir projects that contain state

Based on the keynote by [Dave Thomas](https://pragdave.me/)
at [Empex NYC 2018](http://empex.co/events/2018/conference.html) about
how we are all writing Elixir incorrectly.

## Bootstrap

Before you can use this template (or any other template), you need to install
[mix gen](https://github.com/pragdave/mix_generator).

This template is installed using the `template.install` mix task.
Projects are generated from it using the `mix gen` task.

So, before using templates for the first time, you need to install these two tasks:

    $ mix archive.install mix_templates
    $ mix archive.install mix_generator

Then you can install this template using

    $ mix template.install gen_template_component

## New Component

To generate your new Elixir component

    mix gen component «name» [ --into «path» ] [--module «module»]

«Module» must be a valid Elixir module name or alias.

