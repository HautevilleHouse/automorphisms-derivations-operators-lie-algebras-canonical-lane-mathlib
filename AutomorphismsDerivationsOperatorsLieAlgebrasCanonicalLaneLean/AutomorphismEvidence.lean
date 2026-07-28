import canonicalLaneMathlib.AdmissibleClass
import LieAlgebraFoundation

namespace HautevilleHouse
namespace AutomorphismsDerivationsOperatorsLieAlgebrasCanonicalLaneLean

structure AutomorphismPackage (L : LieAlgebraPackage) where
  automorphism : L.vectorSpace → L.vectorSpace
  linearity : ∀ (a : L.field) (x y : L.vectorSpace), automorphism (a • x + y) = a • (automorphism x) + (automorphism y)
  bracketPreservation : ∀ x y : L.vectorSpace, automorphism (L.bracket x y) = L.bracket (automorphism x) (automorphism y)
  invertibility : ∃ inv : L.vectorSpace → L.vectorSpace, (∀ x, inv (automorphism x) = x) ∧ (∀ x, automorphism (inv x) = x)

structure AutomorphismEvidence {L : LieAlgebraPackage} (A : AutomorphismPackage L) where
  linearityClosed : A.linearity
  bracketPreservationClosed : A.bracketPreservation
  invertibilityClosed : A.invertibility

def AutomorphismClosed {L : LieAlgebraPackage} (A : AutomorphismPackage L) : Prop :=
  A.linearity ∧ A.bracketPreservation ∧ A.invertibility

theorem automorphism_closed_from_evidence {L : LieAlgebraPackage} (A : AutomorphismPackage L) (E : AutomorphismEvidence A) :
    AutomorphismClosed A := by
  exact And.intro E.linearityClosed (And.intro E.bracketPreservationClosed E.invertibilityClosed)

end AutomorphismsDerivationsOperatorsLieAlgebrasCanonicalLaneLean
end HautevilleHouse