defmodule Moon.Application do
  use Application

  def start(_type, _args) do
    children = [
      MoonWeb.Endpoint
    ]

    opts = [strategy: :one_for_one, name: Moon.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    MoonWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end