import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsDerivationsOperatorsLieAlgebrasCanonicalLaneLean

structure LieAlgebraOperatorsPackage where
  lieAlgebra : Type u
  bracket : lieAlgebra → lieAlgebra → lieAlgebra
  jacobiIdentity : Prop
  bilinearity : Prop
  skewSymmetry : Prop

structure LieAlgebraOperatorsEvidence (P : LieAlgebraOperatorsPackage) where
  jacobiIdentityClosed : P.jacobiIdentity
  bilinearityClosed : P.bilinearity
  skewSymmetryClosed : P.skewSymmetry

def LieAlgebraOperatorsClosed (P : LieAlgebraOperatorsPackage) : Prop :=
  P.jacobiIdentity ∧ P.bilinearity ∧ P.skewSymmetry

theorem lie_algebra_operators_closed_from_evidence
    (P : LieAlgebraOperatorsPackage) (E : LieAlgebraOperatorsEvidence P) :
    LieAlgebraOperatorsClosed P := by
  exact And.intro E.jacobiIdentityClosed
    (And.intro E.bilinearityClosed E.skewSymmetryClosed)

end AutomorphismsDerivationsOperatorsLieAlgebrasCanonicalLaneLean
end HautevilleHouse
