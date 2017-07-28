defmodule PhxDocs.Factory do
  use ExMachina

  def user_factory do
    %{
      id: sequence("100"),
      name: sequence("John Doe"),
      username: sequence("john.doe"),
      email: sequence(:email, &"john.doe-#{&1}@example.org")
    }
  end
end
