defmodule Moon.Sites.Aposta10.Layouts.Footer.ForDesktop do
  use Moon.StatelessComponent
  use Moon.Components.Context

  alias Moon.Components.Stack
  alias Moon.Components.Text
  alias Moon.Components.Inline
  alias Moon.Components.Stack
  alias Moon.Components.Switch
  alias Moon.Sites.Aposta10.Layouts.Footer.FollowUs

  def render(assigns) do
    class_name = "site-body-footer-for-desktop"

    ~H"""
    <Context get={{ :theme }}>
      <div class={{ class_name }}>
        <style>
          .{{ class_name }} {
            display: none;
            padding: 20px;
          }

          {{ for_desktop() }} {
            .{{ class_name }} {
              display: block;
              padding-bottom: 20px;
            }
          }
        </style>

        <Stack>
          <Text size=12 color="#92A1AB" style="padding-bottom: 20px;">Home > Courses</Text>

          <Inline>

            <Stack style="max-width: 222px;">
              <Text size=14 is_bold=true>About Aposta10</Text>
              <Text size=12 color="#8697A2">At Bet 10 you stay on top of the world of sports betting, with news, promotions, articles and betting tips that will help you profit.</Text>
            </Stack>

            <Stack>
              <Text size=14 is_bold=true>Support</Text>
              <Text size=12 color="#8697A2">Payment Options</Text>
              <Text size=12 color="#8697A2">Responsible Gambling</Text>
              <Text size=12 color="#8697A2">Affiliate FAQ</Text>
              <Text size=12 color="#8697A2">General Betting Rules</Text>
              <Text size=12 color="#8697A2">Responsible Gambling T&C</Text>
            </Stack>

            <Stack>
              <Text size=14 is_bold=true>Support</Text>
              <Text size=12 color="#8697A2">Payment Options</Text>
              <Text size=12 color="#8697A2">Responsible Gambling</Text>
              <Text size=12 color="#8697A2">Affiliate FAQ</Text>
              <Text size=12 color="#8697A2">General Betting Rules</Text>
              <Text size=12 color="#8697A2">Responsible Gambling T&C</Text>
            </Stack>

            <Stack>
              <Text size=14 is_bold=true>About</Text>
              <Text size=12 color="#8697A2">Privacy Policy</Text>
              <Text size=12 color="#8697A2">About Us</Text>
              <Text size=12 color="#8697A2">Terms and Conditions</Text>
              <Text size=12 color="#8697A2">Affiliates</Text>
              <Text size=12 color="#8697A2">Affiliates T&C</Text>
            </Stack>

            <Stack>
              <Text size=14 is_bold=true>Follow us</Text>
              <FollowUs />
            </Stack>

          </Inline>

          <div style="border-bottom: thin solid #E7EAEC; padding-top: 10px; margin-bottom: 20px;" />

          <Inline>
            <Text size=12 color="#AAB6BE">© 2010-2019 Aposta10. All rights reserved.</Text>
            <Switch
              on_click="toggle_theme"
              left_label="PM"
              left_value="aposta10-light"
              right_label="AM"
              right_value="aposta10-dark"
              value={{ @theme.id }}
            />
          </Inline>

        </Stack>
      </div>

    </Context>
    """
  end
end