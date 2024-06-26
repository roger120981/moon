defmodule MoonWeb.Examples.Design.Form.SelectExample.Default do
  @moduledoc false

  use Moon.StatelessComponent

  use MoonWeb, :example

  alias MoonWeb.Schema.User
  alias Moon.Design.Form
  alias Moon.Design.Form.Select

  prop(gender_options, :list,
    default: [
      [key: "Female", value: "female"],
      [key: "Male", value: "male"],
      [key: "Invalid choice", value: "invalid"],
      [key: "I identify as God and this is not important", value: "god", disabled: true]
    ]
  )

  prop(user_changeset, :any, default: User.changeset(%User{}))

  def render(assigns) do
    ~F"""
    <Form for={@user_changeset}>
      <Select field={:gender} options={@gender_options} prompt="Please select gender" />
    </Form>
    """
  end

  def code() do
    """
    alias MoonWeb.Schema.User
    alias Moon.Design.Form
    alias Moon.Design.Form.Select

    prop(gender_options, :list,
      default: [
        [key: "Female", value: "female"],
        [key: "Male", value: "male"],
        [key: "Invalid choice", value: "invalid"],
        [key: "I identify as God and this is not important", value: "god", disabled: true]
      ]
    )

    prop(user_changeset, :any, default: User.changeset(%User{}))

    def render(assigns) do
      ~F\"""
      <Form for={@user_changeset}>
        <Select field={:gender} options={@gender_options} prompt="Please select gender" />
      </Form>
      \"""
    end
    """
  end
end
