defmodule HelloTwAlpine.Repo do
  use Ecto.Repo,
    otp_app: :hello_tw_alpine,
    adapter: Ecto.Adapters.Postgres
end
