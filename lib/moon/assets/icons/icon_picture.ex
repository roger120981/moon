defmodule Moon.Assets.Icons.IconPicture do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconPicture-#{assigns[:color]}-#{assigns[:background_color]}")

    ~H"""
    <style>
      .{{ class_name }} {
        vertical-align: 'middle';
        color: {{ @color }};
        background-color: {{ @background_color }};
      }
    </style>

    <svg class={{ class_name }} width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg">  <path fill-rule="evenodd" clip-rule="evenodd" d="M5.00001 2C3.34315 2 2 3.34314 2 5L2 16.5858L6.29289 12.2929C6.68342 11.9024 7.31658 11.9024 7.70711 12.2929L15.5 20.0858L20.2929 15.2929C20.6834 14.9024 21.3166 14.9024 21.7071 15.2929L26 19.5858L26 5.00004C26 3.34319 24.6569 2.00004 23 2.00004L5.00001 2ZM28 5.00004C28 2.23862 25.7614 4.54188e-05 23 3.93391e-05L5.00001 0C2.23858 -6.07966e-06 8.9407e-07 2.23857 7.7486e-07 5L0 23C-1.19209e-07 25.7614 2.23857 28 5 28L23 28C25.7614 28 28 25.7614 28 23L28 5.00004ZM26 22.4142L21 17.4142L16.9142 21.5L21.4142 26H23C24.6569 26 26 24.6568 26 23V22.4142ZM18.5858 26L7 14.4142L2 19.4142L2 23C2 24.6568 3.34314 26 5 26L18.5858 26ZM20 5.99999C18.8954 5.99999 18 6.89542 18 7.99999C18 9.10456 18.8954 9.99999 20 9.99999C21.1046 9.99999 22 9.10456 22 7.99999C22 6.89542 21.1046 5.99999 20 5.99999ZM16 7.99999C16 5.79085 17.7909 3.99999 20 3.99999C22.2091 3.99999 24 5.79085 24 7.99999C24 10.2091 22.2091 12 20 12C17.7909 12 16 10.2091 16 7.99999Z" fill="currentColor"/> </svg>
    """
  end
end