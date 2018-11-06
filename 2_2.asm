| declare array
  move.b #10, D0
  move.b #255, D1
  move.b #1, D2
  move.b #0, D3
  array: ds.b 128
  move.w #array, A0
  move.w #12800, A0
  right: move.b D1, (A0)
  inc A0
  move.b A0, D3
  sub.w #11520, D3
  beq end
  dec D0
  bpl right
  dec D3
  beq end
  move.b #10, D0
  sub.w #0, D2
  beq down
  up: move.b D1, (A0)
  sub.w #128, A0
  dec D0
  bpl up
  move.b #10, D0
  move.b #0, D2
  jmp right
  down: move.b D1, (A0)
  add.w #128, A0
  dec D0
  bpl down
  move.b #10, D0
  move.b #1, D2
  jmp right
  end: move.b #0, D3
