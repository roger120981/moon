defmodule Moon.Assets.Icons.IconErrorCircle do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconErrorCircle-#{assigns[:color]}-#{assigns[:background_color]}")

    ~H"""
    <style>
      .{{ class_name }} {
        vertical-align: 'middle';
        color: {{ @color }};
        background-color: {{ @background_color }};
      }
    </style>

    <svg class={{ class_name }} width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg">  <path fill-rule="evenodd" clip-rule="evenodd" d="M14 2C7.37258 2 2 7.37258 2 14C2 20.6274 7.37258 26 14 26C20.6274 26 26 20.6274 26 14C26 7.37258 20.6274 2 14 2ZM0 14C0 6.26801 6.26801 0 14 0C21.732 0 28 6.26801 28 14C28 21.732 21.732 28 14 28C6.26801 28 0 21.732 0 14ZM8.2307 8.29289C8.62122 7.90237 9.25439 7.90237 9.64491 8.29289L14 12.648L18.355 8.29291C18.7456 7.90238 19.3787 7.90238 19.7693 8.29291C20.1598 8.68343 20.1598 9.3166 19.7693 9.70712L15.4142 14.0622L19.7693 18.4172C20.1598 18.8078 20.1598 19.4409 19.7693 19.8315C19.3787 20.222 18.7456 20.222 18.355 19.8315L14 15.4764L9.64491 19.8315C9.25439 20.222 8.62122 20.222 8.2307 19.8315C7.84017 19.4409 7.84017 18.8078 8.2307 18.4173L12.5858 14.0622L8.2307 9.70711C7.84017 9.31658 7.84017 8.68342 8.2307 8.29289Z" fill="currentColor"/> </svg>
    """
  end
end