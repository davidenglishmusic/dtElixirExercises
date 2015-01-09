defmodule OddsAndEnds do

  def float_to_string(number, decimal_places) do
    :erlang.float_to_list(number, [{:decimals, decimal_places}])
  end

  def get_session do
    System.get_env("SESSION")
  end

end
