Require Import Classical.
Require Import ClassicalChoice.
Require Import FunctionalExtensionality.
Require Import PropExtensionality.
Require Import Description.
Require Import ClassicalDescription.
Require Import List.
Require Import Psatz.
Require Import Rbase.
Require Import Rfunctions.
Require Import Sets_basics.


(*Here, we try to formalize the topology lesson here :
http://perso.eleves.ens-rennes.fr/~tpier758/cours/topo.pdf
 *)



(***********************************)
(*Topological spaces, metric spaces*)
(***********************************)

(*Topological spaces : generalities*)

(*Topological spaces*)


Definition is_topo {E} (X : E -> Prop) (T : (E -> Prop) -> Prop) :=
  T empty_set /\
  T X /\
  forall (l : list (E -> Prop)), (forall x, In x l -> T x) -> T (finite_inter l X) /\
  forall (A : (E -> Prop) -> Prop), (forall X, A X -> T X) -> T (union_gen A).

Definition is_open {E} (T : (E -> Prop) -> Prop) o :=
  T o.

Definition is_finer_than {E} (X : E -> Prop) (T1 T2 : (E -> Prop) -> Prop) :=
  subset T1 T2.

(*Notion of neighborhood*)

Definition is_neighbh {E} (X : E -> Prop) (T : (E -> Prop) -> Prop) (x : E) (V : E -> Prop) :=
  subset V X /\ V x /\ exists o, is_open T o.

Definition neigbh_sets {E} (X : E -> Prop) (T : (E -> Prop) -> Prop) 
