# QuickCheck playground

This is a simple project to play with QuickCheck and learn.

QuickCheck is an Erlang property-based testing tool, developed by Quviq.

This is the result of following _The Little Elixir & OTP Guidebook_ book from _Benjamin Tan Wei Hao_, released in 2017 by Manning Publications.

## What are the best casese for using this approach?

From what I've learned:

### Inverse functions

- Encoding and decoding
- Serializing and deserializing
- Splitting and joining
- Setting and getting

### Exploiting invariants

An _invariant_ is a property that remains unchanged when a specific transformation is applied.

- A sort function always sorts elements in order.
- A monotonically increasing function is always such that the former element is less than or equal to the next element.

### Using an existing implementation

Suppose you’ve developed a sorting algorithm that can perform sorting in constant time. One simple way to test your implementation is against an existing implementation that’s known to work well. For example, you can test your custom implementation with one from Erlang:

```Elixir
property "List.super_sort/1" do
    forall l <- list(int) do
        ensure List.super_sort(l) == :lists.sort(l)
    end
end
```

### Idempotent operations

Calling `foo/2` twice is the same as doing it once because it will yield the same result when it’s performed once or performed repeatedly. One example:

```Elixir
property "calling Enum.uniq/1 twice has no effect" do
    forall l <- list(int) do
        ensure(l |> Enum.uniq() == l |> Enum.uniq() |> Enum.uniq())
    end
end
```

## Installation

First, head over to  [QuviQ](http://www.quviq.com/downloads/), and download
QuickCheck (Mini). Here are the steps once you’ve downloaded the file:

- Unzip the file and cd into the resulting folder.
- Run `iex`
- Run `:eqc_install.install()`

Then, go to this project's root and run:

```sh
 mix deps.get
```
