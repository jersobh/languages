import std/[
  strutils,
  cmdline
  ]

proc fibonacci(n: uint64): uint64 =
  if n == 0:
    return 0
  if n == 1:
    return 1
  return fibonacci(n-1) + fibonacci(n-2)

proc main() =
  let u: uint64 = parseUInt paramStr 1
  var r: uint64 = 0
  for i in 1..u-1:
    r += fibonacci(i)
  echo r

main()
