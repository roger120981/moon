defmodule Moon.Assets.Patterns.PatternRipple do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  def render(assigns) do
    class_name =
      get_class_name("Patterns-PatternRipple-#{assigns[:color]}-#{assigns[:background_color]}")

    ~H"""
    <style>
      .{{ class_name }} {
        vertical-align: 'middle';
        color: {{ @color }};
        background-color: {{ @background_color }};
      }
    </style>

    <svg class={{ class_name }} width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">  <path opacity="0.3" d="M13.75 8C13.75 11.1756 11.1756 13.75 8 13.75C4.82436 13.75 2.25 11.1756 2.25 8C2.25 4.82436 4.82436 2.25 8 2.25C11.1756 2.25 13.75 4.82436 13.75 8Z" stroke="currentColor" stroke-width="0.5"/>  <path opacity="0.2" d="M14.75 8C14.75 11.7279 11.7279 14.75 8 14.75C4.27208 14.75 1.25 11.7279 1.25 8C1.25 4.27208 4.27208 1.25 8 1.25C11.7279 1.25 14.75 4.27208 14.75 8Z" stroke="currentColor" stroke-width="0.5"/>  <path opacity="0.1" d="M15.75 8C15.75 12.2802 12.2802 15.75 8 15.75C3.71979 15.75 0.25 12.2802 0.25 8C0.25 3.71979 3.71979 0.25 8 0.25C12.2802 0.25 15.75 3.71979 15.75 8Z" stroke="currentColor" stroke-width="0.5"/>  <path opacity="0.4" d="M12.75 8C12.75 10.6234 10.6234 12.75 8 12.75C5.37665 12.75 3.25 10.6234 3.25 8C3.25 5.37665 5.37665 3.25 8 3.25C10.6234 3.25 12.75 5.37665 12.75 8Z" stroke="currentColor" stroke-width="0.5"/>  <path opacity="0.5" d="M11.75 8C11.75 10.0711 10.0711 11.75 8 11.75C5.92893 11.75 4.25 10.0711 4.25 8C4.25 5.92893 5.92893 4.25 8 4.25C10.0711 4.25 11.75 5.92893 11.75 8Z" stroke="currentColor" stroke-width="0.5"/>  <path opacity="0.6" d="M10.75 8C10.75 9.51878 9.51878 10.75 8 10.75C6.48122 10.75 5.25 9.51878 5.25 8C5.25 6.48122 6.48122 5.25 8 5.25C9.51878 5.25 10.75 6.48122 10.75 8Z" stroke="currentColor" stroke-width="0.5"/>  <path opacity="0.7" d="M9.75 8C9.75 8.9665 8.9665 9.75 8 9.75C7.0335 9.75 6.25 8.9665 6.25 8C6.25 7.0335 7.0335 6.25 8 6.25C8.9665 6.25 9.75 7.0335 9.75 8Z" stroke="currentColor" stroke-width="0.5"/> </svg>
    """
  end
end