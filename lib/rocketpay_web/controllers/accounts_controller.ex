defmodule RocketpayWeb.AccountsController do
  use RocketpayWeb, :controller

  alias Rocketpay.Account

  action_fallback RocketpayWeb.FallbackController

  def deposit(connection, params) do
    with {:ok, %Account{} = account} <- Rocketpay.deposit(params) do
      connection
      |> put_status(:created)
      |> render("update.json", account: account)
    end
  end

  # def withdraw(connection, params) do
  #   with {:ok, %User{} = user} <- Rocketpay.create_user(params) do
  #     connection
  #     |> put_status(:created)
  #     |> render("create.json", user: user)
  #   end
  # end
end
