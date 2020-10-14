defmodule Moon.Sites.MoonDocs.Layouts.DefaultLayout.Content do
  use Moon.StatelessComponent

  def render(assigns) do
    class_name = get_class_name("sites-layouts-defaultlayout-content")

    ~H"""
    <Context get={{ theme: theme }}>
      <style>
        .{{ class_name }} {
          padding-top: 100px;
        }

        {{ for_desktop() }} {
          .{{ class_name }} {
            margin-left: 232px;
          }

          .{{ class_name }}-inner {
            margin: auto;
            max-width: 1136px;
          }
        }
      </style>

      <div class={{ class_name}}>
        <div class="{{ class_name }}-inner">
          <slot />
        </div>
      </div>
    </Context>
    """
  end
end
