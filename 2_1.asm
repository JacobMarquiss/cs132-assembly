| declare two constants
  i: dc.b #16
  sum: dc.b #0
  q: dc.b #20
| declare one byte of storage in main memory for the result
  result: ds.b 1
| declare array
  array: ds.b 128
  move.w #array, A0
  move.b i, D0
  move.b sum, D1
  loop: add q, D1
| move the value of sum to main memory
  move.b D1, (A0)
  inc A0
  dec D0
  bpl loop
  move.b D1, result
