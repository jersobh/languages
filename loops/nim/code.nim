import std/[
  cmdline,
  enumerate,
  random,
  strutils]


proc main() =
  randomize()
  let u = parseInt(paramStr(1))         # Get an input number from the command line
  let r = random.rand(10000) # randint(0, 10000) # Get a random number 0 <= r < 10k
  var arr  = arrayWith(0, 10000)             # Array of 10k elements initialized to 0
  for i, v in enumerate(arr):       # 10k outer loop iterations
    for j in 0..99999:    # 100k inner loop iterations, per outer loop iteration
      arr[i] = v + j %% u        # Simple sum
    arr[i] = arr[i] + r            # Add a random value to each element in array
  echo $arr[r]                  # Print out a single element from the arra

main()
