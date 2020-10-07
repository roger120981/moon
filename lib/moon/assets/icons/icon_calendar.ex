defmodule Moon.Assets.Icons.IconCalendar do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconCalendar-#{assigns[:color]}-#{assigns[:background_color]}")

    ~H"""
    <style>
      .{{ class_name }} {
        vertical-align: 'middle';
        color: {{ @color }};
        background-color: {{ @background_color }};
      }
    </style>

    <svg class={{ class_name }} width="15" height="15" viewBox="0 0 15 15" fill="none" xmlns="http://www.w3.org/2000/svg"> <path d="M11 3C11.6 3 12 2.5 12 2V1C12 0.4 11.6 0 11 0C10.4 0 10 0.4 10 1V2C10 2.5 10.4 3 11 3ZM14 1H13V2C13 3.1 12.1 4 11 4C9.9 4 9 3.1 9 2V1H6V2C6 3.1 5.1 4 4 4C2.9 4 2 3.1 2 2V1H1C0.4 1 0 1.5 0 2V14C0 14.6 0.4 15 1 15H14C14.6 15 15 14.6 15 14V2C15 1.4 14.5 1 14 1ZM5 13H2V10H5V13ZM5 9H2V5H5V9ZM9 13H6V10H9V13ZM9 9H6V5H9V9ZM13 13H10V10H13V13ZM13 9H10V5H13V9ZM4 3C4.6 3 5 2.5 5 2V1C5 0.4 4.6 0 4 0C3.4 0 3 0.4 3 1V2C3 2.5 3.4 3 4 3Z" fill="currentColor"/> </svg>
    """
  end
end