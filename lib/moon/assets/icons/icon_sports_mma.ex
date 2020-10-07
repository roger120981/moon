defmodule Moon.Assets.Icons.IconSportsMma do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconSportsMma-#{assigns[:color]}-#{assigns[:background_color]}")

    ~H"""
    <style>
      .{{ class_name }} {
        vertical-align: 'middle';
        color: {{ @color }};
        background-color: {{ @background_color }};
      }
    </style>

    <svg class={{ class_name }} width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">  <g clip-path="url(#clip0)">   <path d="M8.03161 3.46875C8.98864 3.46875 9.76599 2.69141 9.76599 1.73438C9.76599 0.777344 8.98864 0 8.03161 0C7.07458 0 6.29724 0.777344 6.29724 1.73438C6.29724 2.69141 7.07458 3.46875 8.03161 3.46875ZM15.6644 3.35156C15.3168 3.35156 14.9691 3.46875 14.6254 3.69922C14.6254 3.69922 14.3949 3.81641 14.2777 3.81641C14.0472 3.81641 13.93 3.93359 13.6996 4.04688H7.22302C5.94958 4.04688 5.48864 4.97266 5.48864 5.78125V11.0977L4.91052 14.9141L2.94567 18.4961C2.7152 18.957 2.82849 19.6523 3.40661 19.8828C3.5238 20 3.75427 20 3.86755 20C4.2152 20 4.56286 19.7695 4.79333 19.4219L6.99255 15.4922L7.45349 12.1406L10.2269 14.4531L9.53161 18.8477C9.41442 19.4258 9.87927 20.0039 10.3402 20.0039C10.4574 20.0039 10.4574 20.0039 10.5707 20.0039C11.0316 20.0039 11.4965 19.6562 11.6097 19.0781L12.5355 13.5273L8.37536 10.0586V8.32422L9.18396 9.94141L11.4965 9.48047C11.6136 9.59766 11.8441 9.59766 11.9574 9.48047C12.1879 9.48047 12.305 9.48047 12.4183 9.59766C12.6488 9.71484 12.766 9.71484 12.9965 9.71484C13.805 9.71484 14.5004 9.13672 14.5004 8.32812C14.5004 7.51953 13.805 6.94141 12.9965 6.94141C12.5355 6.94141 12.0707 7.17188 11.8402 7.51953C11.723 7.63672 11.6097 7.75 11.4925 7.75C11.2621 7.63281 11.1449 7.75 11.0316 7.86719L9.87536 8.09766L8.60192 5.55469H13.805C13.9222 5.67188 14.0355 5.67188 14.266 5.67188C14.4965 5.67188 14.7269 5.78906 14.7269 5.78906C14.9574 5.90625 15.305 6.01953 15.6527 6.01953C16.4613 6.01953 17.1566 5.44141 17.1566 4.63281C17.1644 3.92969 16.473 3.35156 15.6644 3.35156Z" fill="currentColor"/>  </g>  <defs>   <clipPath id="clip0">    <rect width="20" height="20" fill="currentColor"/>   </clipPath>  </defs> </svg>
    """
  end
end