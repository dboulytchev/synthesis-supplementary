Require Import List.
Import ListNotations.
Require Import Arith.
Require Import Lia.

Inductive member : nat -> list nat -> Prop :=
| member_h  : forall n tl, member n (n :: tl)
| member_tl : forall m n tl (Hmem : member n tl), member n (m :: tl).

#[export] Hint Constructors member : core.

Inductive sorted : list nat -> Prop :=
| sorted_Nil  : sorted []
| sorted_Cons : forall n tl (HSmallest: forall m (HMem: member m tl), n <= m) (HSorted: sorted tl),  sorted (n :: tl).

#[export] Hint Constructors sorted : core.

Lemma sort (l : list nat) : exists m , sorted (m) /\ forall n, member n l <-> member n m.
Proof. admit. Admitted.
