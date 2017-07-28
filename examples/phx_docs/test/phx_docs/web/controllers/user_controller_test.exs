defmodule PhxDocs.Web.UserControllerTest do
  use PhxDocs.Web.ConnCase

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "index" do
    test "lists all users", %{conn: conn} do
      conn = get(conn, user_path(conn, :index)) |> save_to_docs()
      assert is_list(json_response(conn, 200)["data"])
    end
  end
end
