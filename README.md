# Old Makeup benchmarks

This repo exists only to host some benchmarks for the old version of Makeup
that used to depend on ExSpirit.

To run the benchmark, clone this repo and run the following commands:

```console
$ cd old_makeup/makeup_elixir
$ mix deps.get
$ mix run benchmarks/main.exs
```

The benchmark results will be similar to these:

```text
Name                                                              ips        average  deviation         median         99th %
Formatter performance                                          124.40        8.04 ms    ±97.25%          15 ms          16 ms
Reading file from disk + Lexer + Formatter (end to end)          7.29      137.24 ms     ±7.99%         140 ms         172 ms
Lexer performance                                                7.18      139.33 ms     ±9.72%         140 ms         157 ms
Lexer + Formatter                                                6.83      146.43 ms    ±10.56%         141 ms         187 ms
Lexer compilation time                                         0.0355       28156 ms     ±0.00%       28156 ms       28156 ms
```

This repo is meant to be frozen in time.
Please do not submit improvements to the code.
I'm no longer interested in using ExSpirit with Makeup.