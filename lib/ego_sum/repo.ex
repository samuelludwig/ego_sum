defmodule EgoSum.Repo do
  use Ecto.Repo,
    otp_app: :ego_sum,
    adapter: Ecto.Adapters.Postgres
end
