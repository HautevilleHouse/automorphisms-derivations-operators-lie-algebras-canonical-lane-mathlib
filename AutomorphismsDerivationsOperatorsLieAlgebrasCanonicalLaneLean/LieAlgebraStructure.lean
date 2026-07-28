import Mathlib.Algebra.Lie.Basic

namespace HautevilleHouse
namespace AutomorphismsDerivationsOperatorsLieAlgebrasCanonicalLaneLean

structure LieAlgebraPackage (𝔤 : Type u) [LieRing 𝔤] [LieAlgebra ℝ 𝔤] where
  dimension : ℕ
  center : LieIdeal ℝ 𝔤
  derivedSeries : ℕ → LieIdeal ℝ 𝔤
  nilpotent : Prop
  solvable : Prop
  semisimple : Prop

def LieAlgebraPackageClosed {𝔤 : Type u} [LieRing 𝔤] [LieAlgebra ℝ 𝔤] (L : LieAlgebraPackage 𝔤) : Prop :=
  L.nilpotent ∨ L.solvable ∨ L.semisimple

end AutomorphismsDerivationsOperatorsLieAlgebrasCanonicalLaneLean
end HautevilleHouse
