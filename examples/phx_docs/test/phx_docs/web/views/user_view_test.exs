defmodule PhxDocs.Web.UserViewTest do
  use PhxDocs.Web.ConnCase, async: true

  # Bring render/3 and render_to_string/3 for testing custom views
  import Phoenix.View

  alias PhxDocs.Web.UserView

  test "renders index.json" do
    users = build_list(10, :user)
    assert render(UserView, "index.json", users: users) == %{data: users}
  end

  test "render show.json" do
    user = build(:user)
    assert render(UserView, "show.json", user: user) == %{data: user}
  end

  test "render user.json" do
    user = build(:user)
    assert render(UserView, "user.json", user: user) == user
  end
end
