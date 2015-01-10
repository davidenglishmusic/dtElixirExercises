defmodule OddsAndEnds do

  def float_to_string(number, decimal_places) do
    :erlang.float_to_list(number, [{:decimals, decimal_places}])
  end

  def get_session do
    System.get_env("SESSION")
  end

  def get_extension(file) do
    Path.extname(file)
  end

  def get_current_working_directory do
    System.cwd
  end

  def issue_system_command(command) do
    System.cmd("#{command}", [])
  end

end
