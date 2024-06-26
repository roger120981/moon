defmodule MoonWeb.Examples.Table.WithPagingTest do
  use MoonWeb.ConnCase, async: true

  test "should change page with button", %{conn: conn} do
    {:ok, view, _html} = live(conn, "/example/Design.TableExample.WithPaging")

    assert view
           |> element("#with_buttons nav[aria-label=pagination]")
           |> has_element?()

    assert view
           |> element("#[aria-label=pagination] button.bg-piccolo[aria-label=page_1]")
           |> has_element?()

    assert view
           |> element("#[aria-label=pagination] button.bg-transparent[aria-label=page_2]")
           |> has_element?()

    assert view
           |> element("tr[phx-value-selected=1]")
           |> has_element?()

    refute view
           |> element("tr[phx-value-selected=11]")
           |> has_element?()

    view
    |> element("#[aria-label=pagination] button.bg-transparent[aria-label=page_2]")
    |> render_click()

    assert view
           |> element("#[aria-label=pagination] button.bg-piccolo[aria-label=page_2]")
           |> has_element?()

    assert view
           |> element("#[aria-label=pagination] button.bg-transparent[aria-label=page_1]")
           |> has_element?()

    refute view
           |> element("tr[phx-value-selected=1]")
           |> has_element?()

    assert view
           |> element("tr[phx-value-selected=11]")
           |> has_element?()
  end

  test "should change page with arrows", %{conn: conn} do
    {:ok, view, _html} = live(conn, "/example/Design.TableExample.WithPaging")

    assert view
           |> element("#with_buttons button[disabled][value=0][data-testid=prev]")
           |> has_element?()

    assert view
           |> element("#with_buttons button.bg-transparent[value=2][data-testid=next]")
           |> has_element?()

    view
    |> element("#with_buttons button.bg-transparent[value=2][data-testid=next]")
    |> render_click()

    assert view
           |> element("#with_buttons button.bg-transparent[value=1][data-testid=prev]")
           |> has_element?()

    refute view
           |> element("#with_buttons button.bg-transparent[disabled][value=1][data-testid=prev]")
           |> has_element?()

    assert view
           |> element("#[aria-label=pagination] button.bg-piccolo[aria-label=page_2]")
           |> has_element?()

    assert view
           |> element("#[aria-label=pagination] button.bg-transparent[aria-label=page_1]")
           |> has_element?()

    refute view
           |> element("tr[phx-value-selected=1]")
           |> has_element?()

    assert view
           |> element("tr[phx-value-selected=11]")
           |> has_element?()

    view
    |> element("#with_buttons button.bg-transparent[value=1][data-testid=prev]")
    |> render_click()

    assert view
           |> element("#[aria-label=pagination] button.bg-piccolo[aria-label=page_1]")
           |> has_element?()

    assert view
           |> element("#[aria-label=pagination] button.bg-transparent[aria-label=page_2]")
           |> has_element?()

    assert view
           |> element("tr[phx-value-selected=1]")
           |> has_element?()

    refute view
           |> element("tr[phx-value-selected=11]")
           |> has_element?()
  end

  # TODO: add screenshot test
end
