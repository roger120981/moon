defmodule MoonWeb.Router do
  use Phoenix.Router
  import Plug.Conn
  import Phoenix.Controller
  import Phoenix.LiveView.Router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers

    plug :put_root_layout, {Moon.Sites.Aposta10.Layouts.LayoutView, :root}
  end

  scope "/components/" do

  end

  scope "/sites/aposta10" do
    pipe_through :browser

    live "/", Moon.Sites.Aposta10.Pages.MainPage
  end
end