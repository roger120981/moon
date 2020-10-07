defmodule Moon.Assets.Icons.IconStarEmpty do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconStarEmpty-#{assigns[:color]}-#{assigns[:background_color]}")

    ~H"""
    <style>
      .{{ class_name }} {
        vertical-align: 'middle';
        color: {{ @color }};
        background-color: {{ @background_color }};
      }
    </style>

    <svg class={{ class_name }} width="29" height="28" viewBox="0 0 29 28" fill="none" xmlns="http://www.w3.org/2000/svg">  <path fill-rule="evenodd" clip-rule="evenodd" d="M11.4492 2.05582C12.474 -0.408059 15.9644 -0.408047 16.9891 2.05583L19.1699 7.29907C19.3139 7.6453 19.6395 7.88187 20.0133 7.91184L25.6739 8.36564C28.3338 8.57889 29.4124 11.8984 27.3858 13.6344L23.0731 17.3287C22.7883 17.5727 22.6639 17.9555 22.7509 18.3202L24.0685 23.8439C24.6877 26.4396 21.8639 28.4912 19.5866 27.1002L14.7404 24.1402C14.4204 23.9447 14.0179 23.9447 13.6979 24.1402L8.85173 27.1002C6.57443 28.4912 3.75068 26.4396 4.36984 23.8439L5.68745 18.3202C5.77446 17.9555 5.65009 17.5727 5.3653 17.3287L1.05258 13.6344C-0.974038 11.8984 0.104552 8.57889 2.76451 8.36564L8.42503 7.91184C8.79882 7.88187 9.12443 7.6453 9.26844 7.29907L11.4492 2.05582ZM15.1425 2.82389C14.8009 2.00259 13.6375 2.0026 13.2959 2.82388L11.1151 8.06713C10.6831 9.10583 9.70623 9.81554 8.58486 9.90544L2.92434 10.3592C2.03768 10.4303 1.67816 11.5368 2.35369 12.1155L6.66641 15.8098C7.52078 16.5417 7.89389 17.69 7.63287 18.7843L6.31526 24.308C6.10887 25.1732 7.05013 25.857 7.80922 25.3934L12.6554 22.4334C13.6155 21.847 14.8229 21.847 15.7829 22.4334L20.6291 25.3934C21.3882 25.8571 22.3295 25.1732 22.1231 24.308L20.8055 18.7843C20.5445 17.69 20.9176 16.5417 21.772 15.8098L26.0847 12.1155C26.7602 11.5368 26.4007 10.4303 25.514 10.3592L19.8535 9.90544C18.7321 9.81554 17.7553 9.10584 17.3233 8.06713L15.1425 2.82389Z" fill="currentColor"/> </svg>
    """
  end
end