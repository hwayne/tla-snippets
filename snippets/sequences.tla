\* TUPLE GENERATION

\* TupleOf(s, 3) = s \X s \X s
TupleOf(set, n) == [1..n -> set]

\* All sequences up to length n with all elements in set.
\* Includes empty sequence
SeqOf(set, n) ==  UNION {[1..m -> set] : m \in 0..n}


\* QUEUES
\* If you're using both types make sure they have the same arity

Last(seq) == seq[Len(seq)]

\* FIFO
\* Head-first
Enqueued(seq, a) == <<a>> \o seq
Dequeued(seq) == SubSeq(seq, 1, Len(seq)-1)

\* Tail-first
Enqueued(seq, a) == Append(seq, a)
Dequeued(seq) == Tail(seq)

\* LIFO
\* Head-first
Push(seq, a) == <<a>> \o seq
Peek(seq) == Head(seq)
Pop(seq) == Tail(seq)

\* Tail-first
Push(seq, a) == Append(seq, a)
Peek(seq) == Last(seq)
Pop(seq) == SubSeq(seq, 1, Len(seq)-1)

(* 
  Range(a % b) = 0..b-1, but DOMAIN seq = 1..Len(seq).
  So to do modular arithmetic on sequences we need to
  map 0 to b
*)
SeqMod(a, b) == IF a % b = 0 THEN b else a % b

\* If you prefer an infix
a %% b = SeqMod(a, b)