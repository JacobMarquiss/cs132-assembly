| declare three constants
  A: dc.b #100
  B: dc.b #26
  twenty: dc.b #20
| declare one byte of storage in main memory for the result
  result: ds.b 1
|
  move.b A, D0
  move.b B, D1
  move.b twenty, D2
  sub.w D2, D0
  bmi less
  move.b #100, D1
  move.b D1, result
  jmp end
  less: move.b #10, D1
  end: move.b D1, result
