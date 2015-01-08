defmodule Chop do

  def guess(answer, range) do
    bottom .. top = range
    do_guess(answer, div_limits_by_2(top, bottom), bottom, top)
  end
  defp do_guess(answer, guess, _bottom, _top) when guess == answer do
    IO.puts guess
  end
  defp do_guess(answer, guess, bottom, _top) when guess > answer do
    IO.puts "Is it #{guess}"
    do_guess(answer, div_limits_by_2(guess, bottom), bottom, guess)
  end
  defp do_guess(answer, guess, _bottom, top) do
    IO.puts "Is it #{guess}"
    do_guess(answer, div_limits_by_2(top, guess), guess, top)
  end

  defp div_limits_by_2(top, bottom) do
    div(top - bottom, 2) + bottom
  end

end
