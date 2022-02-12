defmodule ListsEQCTest do
  use ExUnit.Case
  use EQC.ExUnit

  property "reversing a list twice yields the original list" do
    forall l <- list(int) do
      ensure(l |> Enum.reverse() |> Enum.reverse() == l)
    end
  end

  property "encoding is the reverse of decoding" do
    forall bin <- binary do
      ensure(bin |> Base.encode64() |> Base.decode64!() == bin)
    end
  end
end
