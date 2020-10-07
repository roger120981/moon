defmodule Moon.Assets.Icons.IconCurrencyTRX do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconCurrencyTRX-#{assigns[:color]}-#{assigns[:background_color]}")

    ~H"""
    <style>
      .{{ class_name }} {
        vertical-align: 'middle';
        color: {{ @color }};
        background-color: {{ @background_color }};
      }
    </style>

    <svg class={{ class_name }} width="18" height="20" viewBox="0 0 18 20" fill="none" xmlns="http://www.w3.org/2000/svg"> <path d="M14.291 2.77933L0 0L7.52088 20L18 6.50716L14.291 2.77933ZM14.061 4.00397L16.2471 6.19982L10.2679 7.34408L14.061 4.00397ZM8.96958 7.11523L2.66743 1.59156L12.9676 3.5945L8.96958 7.11523ZM8.52038 8.09211L7.49314 17.0703L1.95248 2.33486L8.52038 8.09211ZM9.47156 8.56873L16.0923 7.30153L8.49801 17.0798L9.47156 8.56873Z" fill="currentColor"/> </svg>
    """
  end
end