defmodule MoonWeb.Examples.Design.BreadcrumbExample.HeadlessExtended do
  @moduledoc false

  use Moon.StatefulComponent
  use MoonWeb, :example

  alias Moon.Design.Breadcrumb
  alias Moon.Design.Breadcrumb.Crumb

  alias Moon.Icon

  data(breadcrumb_items, :list,
    default: [
      %Crumb{
        link: "/components/v2/breadcrumb",
        icon: "generic_home"
      },
      %Crumb{
        name: "Page 1",
        link: "/components/v2/breadcrumb"
      },
      %Crumb{
        name: "Page 2",
        link: "/components/v2/breadcrumb"
      },
      %Crumb{
        name: "Current Page",
        link: "/components/v2/breadcrumb"
      }
    ]
  )

  def render(assigns) do
    ~F"""
    <div>
      <Breadcrumb id="headless-extended" breadcrumbs={@breadcrumb_items}>
        <Breadcrumb.Item
          class="text-bulma hover:text-trunks last:text-piccolo last:font-normal last:hover:text-bulma"
          :let={crumb: crumb}
        >
          <Breadcrumb.Item.Divider class="text-bulma px-2">/</Breadcrumb.Item.Divider>
          <Icon
            name={crumb.icon}
            class="text-moon-24"
            :if={Map.has_key?(crumb, :icon) && crumb.icon != ""}
          />
          {#if crumb.name}
            {crumb.name}
          {/if}
        </Breadcrumb.Item>
      </Breadcrumb>
    </div>
    """
  end

  def code() do
    """
    alias Moon.Design.Breadcrumb
    alias Moon.Design.Breadcrumb.Crumb

    alias Moon.Icon

    data(breadcrumb_items, :list,
      default: [
        %Crumb{
          link: "/components/v2/breadcrumb",
          icon: "generic_home"
        },
        %Crumb{
          name: "Page 1",
          link: "/components/v2/breadcrumb"
        },
        %Crumb{
          name: "Page 2",
          link: "/components/v2/breadcrumb"
        },
        %Crumb{
          name: "Current Page",
          link: "/components/v2/breadcrumb"
        }
      ]
    )

    def render(assigns) do
      ~F\"""
      <div>
        <Breadcrumb id="headless-extended" breadcrumbs={@breadcrumb_items}>
          <Breadcrumb.Item
            class="text-bulma hover:text-trunks last:text-piccolo last:font-normal last:hover:text-bulma"
            :let={crumb: crumb}
          >
            <Breadcrumb.Item.Divider class="text-bulma px-2">/</Breadcrumb.Item.Divider>
            <Icon
              name={crumb.icon}
              class="text-moon-24"
              :if={Map.has_key?(crumb, :icon) && crumb.icon != ""}
            />
            {#if crumb.name}
              {crumb.name}
            {/if}
          </Breadcrumb.Item>
        </Breadcrumb>
      </div>
      \"""
    end
    """
  end
end
