defmodule Moon.Components.Select.SingleSelect.Value.SelectedValue do
  @moduledoc false

  use Moon.StatelessComponent
  alias Moon.Autolayouts.LeftToRight
  alias Moon.Icons.ControlsClose
  alias Phoenix.LiveView.JS
  prop select_id, :string
  prop option, :any

  def render(assigns) do
    ~F"""
    {#if @option}
      <span>
        <LeftToRight>
          <span>{@option.label}</span>
          <span
            class="cursor-pointer"
            :on-click={JS.dispatch("moon:update-select",
              detail: %{value: @option.value, selected: false},
              to: "##{@select_id}"
            )}
          ><ControlsClose /></span>
        </LeftToRight>
      </span>
    {/if}
    """
  end
end

defmodule Moon.Components.Select.SingleSelect.Value do
  @moduledoc false

  use Moon.StatelessComponent
  alias __MODULE__.SelectedValue

  prop select_id, :string
  prop options, :list, default: []
  prop value, :any
  prop prompt, :string

  def render(assigns) do
    ~F"""
    <div class="flex flex-wrap gap-2">
      {#if @value && @value != ""}
        <SelectedValue select_id={@select_id} option={get_option(@options, @value)} />
      {#else}
        {@prompt}
      {/if}
    </div>
    """
  end

  def get_option(options, v) do
    Enum.find(options, fn option ->
      "#{option.value}" == "#{v}"
    end)
  end
end

# https://www.figma.com/file/S3q1SkVngbwHuwpxHKCsgtJj/Moon---Components?node-id=22819%3A17501
defmodule Moon.Components.Select.SingleSelect do
  @moduledoc false

  use Moon.StatefulComponent
  alias Moon.Autolayouts.PullAside
  alias Moon.Components.FieldBorder
  alias Moon.Components.Popover
  alias Moon.Components.Select.Dropdown
  alias Moon.Components.Select.Helpers, as: SelectHelpers
  alias Surface.Components.Form.Input.InputContext
  alias __MODULE__.Value

  prop field, :atom
  prop label, :string
  prop options, :any, default: []
  prop value, :any
  prop prompt, :string
  prop error, :string
  prop disabled, :boolean
  prop required, :boolean
  prop class, :string
  prop popover_placement, :string, default: "bottom-start"

  data open, :boolean, default: false

  slot default

  def render(assigns) do
    ~F"""
    <InputContext assigns={assigns} :let={form: form, field: field}>
      <Popover placement={@popover_placement} show={@open} on_close="close">
        {Phoenix.HTML.Form.select(form, field, SelectHelpers.get_formatted_options(@options),
          class: "w-full hidden",
          id: @id,
          prompt: [key: ""]
        )}
        <FieldBorder click="toggle_open">
          <PullAside class="align-middle">
            <:left>
              <Value
                select_id={@id}
                options={@options}
                value={SelectHelpers.get_normalized_value(form, field, false, value: @value)}
                prompt={@prompt}
              />
            </:left>
            <:right>
              <Moon.Icons.ControlsChevronDown />
            </:right>
          </PullAside>
        </FieldBorder>
        <:content>
          <Dropdown class="w-auto" id={"#{@id}-dropdown"} select_id={@id} options={@options} />
        </:content>
      </Popover>
    </InputContext>
    """
  end

  def handle_event("close", _params, socket) do
    socket = assign(socket, open: false)
    {:noreply, socket}
  end

  def handle_event("toggle_open", _params, socket) do
    socket = assign(socket, open: !socket.assigns.open)
    {:noreply, socket}
  end
end
