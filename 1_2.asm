| declare two constants
  i: dc.b #10
  sum: dc.b #0
| declare one byte of storage in main memory for the result
  result: ds.b 1
|
  move.b i, D0
  move.b sum, D1
  loop: add D0, D1
  dec D0
  bpl loop
  move.b D1, result
