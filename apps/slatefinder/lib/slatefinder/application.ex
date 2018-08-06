defmodule Slatefinder.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do

    import Supervisor.Spec, warn: false
    
    # List all child processes to be supervised
    children = [
      supervisor(Slatefinder.Repo, [])
      # Starts a worker by calling: Slatefinder.Worker.start_link(arg)
      # {Slatefinder.Worker, arg},
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Slatefinder.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
