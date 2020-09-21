defmodule Callbag.Repo do
  use Ecto.Repo,
    otp_app: :callbag,
    adapter: Ecto.Adapters.Postgres
end
