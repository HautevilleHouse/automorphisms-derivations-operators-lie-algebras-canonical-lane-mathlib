import AutomorphismsDerivationsOperatorsLieAlgebrasCanonicalLaneLean.LieAlgebraStructure

namespace HautevilleHouse
namespace AutomorphismsDerivationsOperatorsLieAlgebrasCanonicalLaneLean

structure DerivationPackage {𝔤 : Type u} [LieRing 𝔤] [LieAlgebra ℝ 𝔤] (L : LieAlgebraPackage 𝔤) where
  derivationSpace : Type v
  linearMap : derivationSpace → (𝔤 →ₗ[ℝ] 𝔤)
  leibnizRule : Prop
  innerDerivation : derivationSpace → 𝔤 → derivationSpace
  closedUnderBracket : Prop

structure DerivationEvidence {𝔤 : Type u} [LieRing 𝔤] [LieAlgebra ℝ 𝔤] {L : LieAlgebraPackage 𝔤} (D : DerivationPackage L) where
  leibnizRuleClosed : D.leibnizRule
  closedUnderBracketClosed : D.closedUnderBracket

def DerivationClosed {𝔤 : Type u} [LieRing 𝔤] [LieAlgebra ℝ 𝔤] {L : LieAlgebraPackage 𝔤} (D : DerivationPackage L) : Prop :=
  D.leibnizRule ∧ D.closedUnderBracket

theorem derivation_closed_from_evidence {𝔤 : Type u} [LieRing 𝔤] [LieAlgebra ℝ 𝔤] {L : LieAlgebraPackage 𝔤} (D : DerivationPackage L) (E : DerivationEvidence D) : DerivationClosed D :=
  And.intro E.leibnizRuleClosed E.closedUnderBracketClosed

end AutomorphismsDerivationsOperatorsLieAlgebrasCanonicalLaneLean
end HautevilleHouse
