import AutomorphismsDerivationsOperatorsLieAlgebrasCanonicalLaneLean.TheoremStatement
import Mathlib.Algebra.Lie.Basic

namespace HautevilleHouse
namespace AutomorphismsDerivationsOperatorsLieAlgebrasCanonicalLaneLean

structure LieAlgebraSpace where
  carrier : Type
  lieRing : LieRing carrier
  lieAlgebra : LieAlgebra ℝ carrier

structure LieAlgebraAdmittedObject where
  space : LieAlgebraSpace
  finiteDimensional : Prop
  semisimple : Prop
  conclusion : finiteDimensional ∧ semisimple

def LieAlgebraWitnessClosed (O : LieAlgebraAdmittedObject) : Prop :=
  O.finiteDimensional ∧ O.semisimple

end AutomorphismsDerivationsOperatorsLieAlgebrasCanonicalLaneLean
end HautevilleHouse
