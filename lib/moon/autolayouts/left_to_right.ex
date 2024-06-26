defmodule Moon.Autolayouts.LeftToRight do
  @moduledoc false

  use Moon.StatelessComponent

  slot(default)
  prop(class, :css_class, default: nil)
  prop(gap, :css_class, default: "gap-2")
  prop(centered, :boolean, default: false)
  prop(dir, :string, values: ["ltr", "rtl"], default: "ltr")

  def render(assigns) do
    ~F"""
    <div class={"flex", @gap, @class, "items-center": @centered} {=@dir}>
      <#slot />
    </div>
    """
  end
end
