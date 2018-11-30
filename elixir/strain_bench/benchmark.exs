list = ~w(
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
    apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
    apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
    apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
    apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
    apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
    apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
  apple zebra banana zombies cherimoya zelot
)

checker = &String.starts_with?(&1, "z")

Benchee.run(%{
  "strain.comprehension" => fn -> Strain.keep(list, checker) end,
  "strain.enum" => fn -> Strain.keep_enum(list, checker) end,
  "enum.filter" => fn -> Enum.filter(list, checker) end
})
