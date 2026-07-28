import AutomorphismsDerivationsOperatorsLieAlgebrasCanonicalLaneLean.LieAlgebraStructure
import Mathlib.Algebra.Lie.Derivation

/-!
# Derivation Operators Package
-/

namespace HautevilleHouse
namespace AutomorphismsDerivationsOperatorsLieAlgebrasCanonicalLaneLean

structure DerivationPackage {L : LieAlgebraPackage} where
  derivationSpace : Type w
  liebnizRule : Prop
  linearity : Prop
  bracketClosure : Prop

structure DerivationEvidence {L : LieAlgebraPackage} (D : DerivationPackage L) where
  liebnizRuleClosed : D.liebnizRule
  linearityClosed : D.linearity
  bracketClosureClosed : D.bracketClosure

def DerivationClosed {L : LieAlgebraPackage} (D : DerivationPackage L) : Prop :=
  D.liebnizRule ∧ D.linearity ∧ D.bracketClosure

theorem derivation_closed_from_evidence {L : LieAlgebraPackage} (D : DerivationPackage L) (E : DerivationEvidence D) :
    DerivationClosed D := by
  exact And.intro E.liebnizRuleClosed (And.intro E.linearityClosed E.bracketClosureClosed)

end AutomorphismsDerivationsOperatorsLieAlgebrasCanonicalLaneLean
end HautevilleHouse