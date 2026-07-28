import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsDerivationsOperatorsLieAlgebrasCanonicalLaneLean

structure DerivationAlgebraPackage where
  lieAlgebra : Type u
  derivation : lieAlgebra → lieAlgebra
  linearity : Prop
  leibnizRule : Prop
  bracketDerivation : Prop

structure DerivationAlgebraEvidence (D : DerivationAlgebraPackage) where
  linearityClosed : D.linearity
  leibnizRuleClosed : D.leibnizRule
  bracketDerivationClosed : D.bracketDerivation

def DerivationAlgebraClosed (D : DerivationAlgebraPackage) : Prop :=
  D.linearity ∧ D.leibnizRule ∧ D.bracketDerivation

theorem derivation_algebra_closed_from_evidence
    (D : DerivationAlgebraPackage) (E : DerivationAlgebraEvidence D) :
    DerivationAlgebraClosed D := by
  exact And.intro E.linearityClosed
    (And.intro E.leibnizRuleClosed E.bracketDerivationClosed)

end AutomorphismsDerivationsOperatorsLieAlgebrasCanonicalLaneLean
end HautevilleHouse
