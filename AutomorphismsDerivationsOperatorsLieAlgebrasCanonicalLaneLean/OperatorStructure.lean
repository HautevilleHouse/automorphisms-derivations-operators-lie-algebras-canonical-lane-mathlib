import canonicalLaneMathlib.AdmissibleClass
import LieAlgebraFoundation

namespace HautevilleHouse
namespace AutomorphismsDerivationsOperatorsLieAlgebrasCanonicalLaneLean

structure OperatorPackage (L : LieAlgebraPackage) where
  operator : L.vectorSpace → L.vectorSpace
  linearity : ∀ (a : L.field) (x y : L.vectorSpace), operator (a • x + y) = a • (operator x) + (operator y)

structure OperatorEvidence {L : LieAlgebraPackage} (O : OperatorPackage L) where
  linearityClosed : O.linearity

def OperatorClosed {L : LieAlgebraPackage} (O : OperatorPackage L) : Prop :=
  O.linearity

theorem operator_closed_from_evidence {L : LieAlgebraPackage} (O : OperatorPackage L) (E : OperatorEvidence O) :
    OperatorClosed O := by
  exact E.linearityClosed

end AutomorphismsDerivationsOperatorsLieAlgebrasCanonicalLaneLean
end HautevilleHouse