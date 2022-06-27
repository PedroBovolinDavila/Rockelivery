defmodule RockeliveryWeb.UsersView do
  use RockeliveryWeb, :view

  alias Rockelivery.User

  def render("create.json", %{user: %User{} = user, token: token}) do
    %{
      message: "User created!",
      user: user,
      token: token
    }
  end

  def render("user.json", %{user: %User{} = user}), do: %{user: user}

  def render("delete.json", %{user: %User{} = user}) do
    %{
      message: "User deleted",
      user: user
    }
  end

  def render("sign_in.json", %{token: token}), do: %{token: token}
end
