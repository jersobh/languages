# Languages

A repo for collaboratively building small benchmarks to compare languages.
If you have a suggestion for improvement: PR!
If you want to add a language: PR!

## Running

To run one of the benchmarks:

1. `cd` into desired benchmark directory (EG `$ cd loops`)
2. Compile by running `$ bash ../compile.sh`
3. Run via `$ bash ../run.sh`.
  You should see output something like:
  
  ```
  $ bash ../run.sh                                                                                                                                                                   ✔ │ 7s │ 18:51:48 

C = 0.70s
C = 0.68s
C = 0.65s

Java = 0.88s
Java = 0.80s
Java = 0.72s

Cython = 0.89s
Cython = 0.74s
Cython = 0.75s
  $
  ```

4. For good measure, execute `$ bash ../clean.sh` when finished.

## Adding

To add a language:

1. Select the benchmark directory you want to add to (EG `$ cd loops`)
2. Create a new subdirectory for the language (EG `$ mkdir rust`)
3. Implement the code in the appropriately named file (EG: `code.rs`)
4. If the language is compiled, add appropriate command to `../compile.sh` and `../clean.sh`
5. Add appropriate line to `../run.sh`

You are also welcome to add new top-level benchmarks dirs

# Available Benchmarks

## loops

Emphasizes loop, conditional, and basic math performance.

## fibonacci

Emphasizes function call overhead and recursion.
