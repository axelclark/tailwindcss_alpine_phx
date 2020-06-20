defmodule HelloTwAlpine.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      HelloTwAlpine.Repo,
      # Start the Telemetry supervisor
      HelloTwAlpineWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: HelloTwAlpine.PubSub},
      # Start the Endpoint (http/https)
      HelloTwAlpineWeb.Endpoint
      # Start a worker by calling: HelloTwAlpine.Worker.start_link(arg)
      # {HelloTwAlpine.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: HelloTwAlpine.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    HelloTwAlpineWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
