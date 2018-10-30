| declare a place in memory for use
  move.b #1, D0
  move.b #1, D1
  move.b #128, D2

  left: move.b #128, D2
  asl D0
  sub.w D0, D2
  beq right
  jmp left

  right: move.b #1, D1
  asr D0
  sub.w D0, D1
  beq left
  jmp right
