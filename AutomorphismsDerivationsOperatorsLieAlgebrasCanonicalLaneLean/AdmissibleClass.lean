import Mathlib.Algebra.Lie.Basic
import Mathlib.Algebra.Lie.Derivation

namespace HautevilleHouse
namespace AutomorphismsDerivationsOperatorsLieAlgebrasCanonicalLaneLean

open LieAlgebra

-- A property that all derivations are inner
def AllDerivationsInner (L : Type u) [LieRing L] [LieAlgebra ℚ L] : Prop :=
  ∀ (d : Derivation ℚ L L), ∃ (x : L), d = ad x

-- A structure for a Lie algebra that is finite-dimensional semisimple and all derivations are inner
structure LieAdmittedObject where
  L : Type u
  [lieRing : LieRing L]
  [lieAlgebra : LieAlgebra ℚ L]
  finiteDimensional : FiniteDimensional ℚ L
  semisimple : IsSemisimple L
  conclusion : AllDerivationsInner L

-- The admissible class structure
structure AdmissibleClass where
  object : LieAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

-- A closure predicate for the admissible class
def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AutomorphismsDerivationsOperatorsLieAlgebrasCanonicalLaneLean
end HautevilleHouse