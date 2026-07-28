import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsDerivationsOperatorsLieAlgebrasCanonicalLaneLean

structure LieAlgebraPackage where
  field : Type u
  vectorSpace : Type v
  bracket : vectorSpace → vectorSpace → vectorSpace
  anticommutativity : ∀ x y : vectorSpace, bracket x y = -(bracket y x)
  jacobiIdentity : ∀ x y z : vectorSpace, bracket x (bracket y z) + bracket y (bracket z x) + bracket z (bracket x y) = 0
  bilinearity : ∀ (a : field) (x y : vectorSpace), bracket (a • x) y = a • (bracket x y) ∧ bracket x (a • y) = a • (bracket x y)

structure LieAlgebraEvidence (L : LieAlgebraPackage) where
  anticommutativityClosed : L.anticommutativity
  jacobiIdentityClosed : L.jacobiIdentity
  bilinearityClosed : L.bilinearity

def LieAlgebraClosed (L : LieAlgebraPackage) : Prop :=
  L.anticommutativity ∧ L.jacobiIdentity ∧ L.bilinearity

theorem lieAlgebra_closed_from_evidence (L : LieAlgebraPackage) (E : LieAlgebraEvidence L) :
    LieAlgebraClosed L := by
  exact And.intro E.anticommutativityClosed (And.intro E.jacobiIdentityClosed E.bilinearityClosed)

end AutomorphismsDerivationsOperatorsLieAlgebrasCanonicalLaneLean
end HautevilleHouse