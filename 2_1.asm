| declare two constants
  i: dc.w #65535
  sum: dc.b #0
  q: dc.b #2
| declare one byte of storage in main memory for the result
  result: ds.b 1
| declare array
  array: ds.b 128
  move.w #array, A0
  move.w i, D0
  move.w sum, D1
  move.w q, D2
  loop: add D2, D1
| move the value of sum to main memory
  move.b D1, (A0)
  ror.w D2
  sub.w #128, D2
  inc A0
  dec D0
  bpl loop
  move.b D1, result
