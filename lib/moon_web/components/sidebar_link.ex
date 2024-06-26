defmodule MoonWeb.Components.SidebarLink do
  @moduledoc false

  use MoonWeb, :stateless_component

  alias Moon.Design.MenuItem

  prop(route, :any)
  slot(default)

  data(active_page, :string, from_context: :active_page)

  def render(assigns) do
    ~F"""
    <MenuItem
      as="a"
      class="justify-start"
      attrs={
        "data-phx-link": "redirect",
        "data-phx-link-state": "push"
      }
      is_active={@active_page == @route}
      href={live_path(MoonWeb.Endpoint, @route)}
    >
      <#slot />
    </MenuItem>
    """
  end
end
