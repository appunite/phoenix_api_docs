defmodule PhxDocs.Factory do
  use ExMachina

  def user_factory do
    %{
      name: sequence("John Doe"),
      username: sequence("john.doe"),
      email: sequence(:email, &"john.doe-#{&1}@example.org")
    }
  end
end
