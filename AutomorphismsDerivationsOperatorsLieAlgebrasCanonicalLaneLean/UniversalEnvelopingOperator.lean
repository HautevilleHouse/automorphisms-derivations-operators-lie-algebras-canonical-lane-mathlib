import AutomorphismsDerivationsOperatorsLieAlgebrasCanonicalLaneLean.Derivations

namespace HautevilleHouse
namespace AutomorphismsDerivationsOperatorsLieAlgebrasCanonicalLaneLean

structure UniversalEnvelopingPackage {𝔤 : Type u} [LieRing 𝔤] [LieAlgebra ℝ 𝔤] (L : LieAlgebraPackage 𝔤) where
  algebra : Type v
  multiplication : algebra → algebra → algebra
  unit : algebra
  associative : Prop
  canonicalMap : 𝔤 → algebra
  universalProperty : ∀ (A : Type w) [Ring A] [Algebra ℝ A], (𝔤 →ₗ[ℝ] A) → (algebra → A)
  poincareBirkhoffWitt : Prop

structure UniversalEnvelopingEvidence {𝔤 : Type u} [LieRing 𝔤] [LieAlgebra ℝ 𝔤] {L : LieAlgebraPackage 𝔤} (U : UniversalEnvelopingPackage L) where
  associativeClosed : U.associative
  poincareBirkhoffWittClosed : U.poincareBirkhoffWitt

def UniversalEnvelopingClosed {𝔤 : Type u} [LieRing 𝔤] [LieAlgebra ℝ 𝔤] {L : LieAlgebraPackage 𝔤} (U : UniversalEnvelopingPackage L) : Prop :=
  U.associative ∧ U.poincareBirkhoffWitt

theorem universal_enveloping_closed_from_evidence {𝔤 : Type u} [LieRing 𝔤] [LieAlgebra ℝ 𝔤] {L : LieAlgebraPackage 𝔤} (U : UniversalEnvelopingPackage L) (E : UniversalEnvelopingEvidence U) : UniversalEnvelopingClosed U :=
  And.intro E.associativeClosed E.poincareBirkhoffWittClosed

end AutomorphismsDerivationsOperatorsLieAlgebrasCanonicalLaneLean
end HautevilleHouse
