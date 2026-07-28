import canonicalLaneMathlib.AdmissibleClass
import LieAlgebraFoundation

namespace HautevilleHouse
namespace AutomorphismsDerivationsOperatorsLieAlgebrasCanonicalLaneLean

structure DerivationPackage (L : LieAlgebraPackage) where
  derivation : L.vectorSpace → L.vectorSpace
  linearity : ∀ (a : L.field) (x y : L.vectorSpace), derivation (a • x + y) = a • (derivation x) + (derivation y)
  leibnizRule : ∀ x y : L.vectorSpace, derivation (L.bracket x y) = L.bracket (derivation x) y + L.bracket x (derivation y)

structure DerivationEvidence {L : LieAlgebraPackage} (D : DerivationPackage L) where
  linearityClosed : D.linearity
  leibnizRuleClosed : D.leibnizRule

def DerivationClosed {L : LieAlgebraPackage} (D : DerivationPackage L) : Prop :=
  D.linearity ∧ D.leibnizRule

theorem derivation_closed_from_evidence {L : LieAlgebraPackage} (D : DerivationPackage L) (E : DerivationEvidence D) :
    DerivationClosed D := by
  exact And.intro E.linearityClosed E.leibnizRuleClosed

end AutomorphismsDerivationsOperatorsLieAlgebrasCanonicalLaneLean
end HautevilleHouse