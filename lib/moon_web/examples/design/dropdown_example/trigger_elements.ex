defmodule MoonWeb.Examples.Design.DropdownExample.TriggerElements do
  @moduledoc false

  use Moon.StatelessComponent
  use MoonWeb, :example

  alias Moon.Design.Dropdown
  alias Moon.Design.Button
  alias Moon.Design.Button.IconButton
  alias Moon.Components.Chip
  alias Moon.Icons.ControlsChevronDown

  def render(assigns) do
    ~F"""
    <Dropdown
      class="w-72"
      id="dropdown-trigger-01"
      option_titles={["Wade Cooper", "Arlene Mccoy", "Devon Webb", "Tom Cook", "Tanya Fox", "Hellen Schmidt"]}
    >
      <Dropdown.Trigger>
        <IconButton icon_only="controls_chevron_down" variant="secondary" />
      </Dropdown.Trigger>
    </Dropdown>
    <Dropdown
      id="dropdown-trigger-02"
      class="w-72"
      option_titles={["Wade Cooper", "Arlene Mccoy", "Devon Webb", "Tom Cook", "Tanya Fox", "Hellen Schmidt"]}
    >
      <Dropdown.Trigger>
        <Button>Select name</Button>
      </Dropdown.Trigger>
    </Dropdown>
    <Dropdown
      id="dropdown-trigger-03"
      class="w-auto"
      option_titles={["Wade Cooper", "Arlene Mccoy", "Devon Webb", "Tom Cook", "Tanya Fox", "Hellen Schmidt"]}
    >
      <Dropdown.Trigger :let={is_open: is_open}>
        <Chip>
          Select name
          <ControlsChevronDown class={"text-trunks text-moon-16 transition-transform transition-200", "rotate-180": is_open} />
        </Chip>
      </Dropdown.Trigger>
    </Dropdown>
    """
  end

  def code() do
    """
    <Dropdown
      class="w-72"
      id="dropdown-trigger-01"
      option_titles={["Wade Cooper", "Arlene Mccoy", "Devon Webb", "Tom Cook", "Tanya Fox", "Hellen Schmidt"]}
    >
      <Dropdown.Trigger>
        <IconButton icon_only="controls_chevron_down" variant="secondary"/>
      </Dropdown.Trigger>
    </Dropdown>
    <Dropdown
      id="dropdown-trigger-02"
      class="w-72"
      option_titles={["Wade Cooper", "Arlene Mccoy", "Devon Webb", "Tom Cook", "Tanya Fox", "Hellen Schmidt"]}
    >
      <Dropdown.Trigger>
        <Button>Select name</Button>
      </Dropdown.Trigger>
    </Dropdown>
    <Dropdown
      id="dropdown-trigger-03"
      class="w-auto"
      option_titles={["Wade Cooper", "Arlene Mccoy", "Devon Webb", "Tom Cook", "Tanya Fox", "Hellen Schmidt"]}
    >
      <Dropdown.Trigger :let={is_open: is_open}>
        <Chip>
          Select name
          <ControlsChevronDown class={"text-trunks text-moon-16 transition-transform transition-200", "rotate-180": is_open} />
        </Chip>
      </Dropdown.Trigger>
    </Dropdown>

    """
  end
end