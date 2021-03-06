defmodule Stripe.AuthenticationError do
  @moduledoc """
  Failure to properly authenticate yourself in the request.
  """
  defstruct type: "authentication_error", message: nil
end
