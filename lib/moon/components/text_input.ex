defmodule Moon.Components.TextInput.TextInputInternal do
  use Moon.StatelessComponent

  alias Surface.Components.Form.TextInput

  prop(field, :atom)

  prop(type, :string,
    default: "text",
    values: [
      "date",
      "datetime-local",
      "email",
      "number",
      "password",
      "search",
      "tel",
      "text",
      "url",
      "time",
      "url"
    ]
  )

  prop(value, :string)
  prop(placeholder, :string)
  prop(error, :string)
  prop(rounded, :boolean)
  prop(disabled, :boolean)
  prop(required, :boolean)
  prop(left_icon, :string)
  prop(right_icon, :string)
  prop(right_icon_click, :event)
  prop(class, :string)
  prop(without_design, :boolean)
  prop(on_focus, :event)
  prop(on_blur, :event)

  def render(assigns) do
    ~F"""
    <TextInput
      class={
        "w-full max-w-full px-4 py-3 mt-2 top-2/4 flex flex-col flex-grow-0	items-start bg-goku-100 hover:bg-goku-120 my-2 mx-0 appearance-none
                    text-base leading-normal text-color-bulma-100 box-border order-1 self-stretch static border border-solid border-beerus-100
                     rounded-lg transition ease-in placeholder-trunks-100 placeholder-opacity-100 disabled:opacity-50 disabled:cursor-not-allowed
                    focus:border-piccolo-100 focus:outline-none z-0 relative no-scrollbar invalid:shadow-none invalid:border-chi-chi-100",
        "pl-12": @left_icon,
        "pr-12": @right_icon,
        "border-chi-chi-100": @error
      }
      field={@field}
      opts={[
        placeholder: @placeholder,
        disabled: @disabled
      ]}
      value={@value}
      focus={@on_focus}
      blur={@on_blur}
    />
    """
  end
end

defmodule Moon.Components.TextInput do
  use Moon.StatelessComponent

  alias __MODULE__.TextInputInternal
  alias Moon.Components.Label

  prop(field, :atom)
  prop(label, :string)

  prop(type, :string,
    default: "text",
    values: [
      "date",
      "datetime-local",
      "email",
      "number",
      "password",
      "search",
      "tel",
      "text",
      "url",
      "time",
      "url"
    ]
  )

  prop(value, :string)
  prop(placeholder, :string)
  prop(error, :string)
  prop(rounded, :boolean)
  prop(disabled, :boolean)
  prop(required, :boolean)
  prop(right_icon_click, :event)
  prop(class, :string)
  prop(without_design, :boolean)
  prop(on_focus, :event)
  prop(on_blur, :event)

  slot left_icon
  slot right_icon

  def render(assigns) do
    ~F"""
    <div class="relative">
      {asset_import(@socket, "js/components/text-input")}

      <div :if={slot_assigned?(:left_icon)} class="absolute z-10 top-10 left-5">
        <#slot name="left_icon" />
      </div>

      <div :if={slot_assigned?(:right_icon)} class="absolute z-10 top-10 right-5">
        <#slot name="right_icon" />
      </div>

      <TextInputInternal
        {=@class}
        {=@field}
        {=@error}
        {=@placeholder}
        {=@disabled}
        left_icon={slot_assigned?(:left_icon) == true}
        right_icon={slot_assigned?(:right_icon) == true}
        {=@value}
        {=@on_focus}
        {=@on_blur}
        :if={!@label}
      />

      <Label text={@label} :if={@label}>
        <TextInputInternal
          {=@class}
          {=@field}
          {=@error}
          {=@placeholder}
          {=@disabled}
          left_icon={slot_assigned?(:left_icon) == true}
          right_icon={slot_assigned?(:right_icon) == true}
          {=@value}
          {=@on_focus}
          {=@on_blur}
        />
      </Label>
    </div>
    """
  end
end
