import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsDerivationsOperatorsLieAlgebrasCanonicalLaneLean

structure AutomorphismGroupPackage where
  lieAlgebra : Type u
  automorphism : lieAlgebra → lieAlgebra
  invertible : Prop
  preservesBracket : Prop
  groupStructure : Prop

structure AutomorphismGroupEvidence (A : AutomorphismGroupPackage) where
  invertibleClosed : A.invertible
  preservesBracketClosed : A.preservesBracket
  groupStructureClosed : A.groupStructure

def AutomorphismGroupClosed (A : AutomorphismGroupPackage) : Prop :=
  A.invertible ∧ A.preservesBracket ∧ A.groupStructure

theorem automorphism_group_closed_from_evidence
    (A : AutomorphismGroupPackage) (E : AutomorphismGroupEvidence A) :
    AutomorphismGroupClosed A := by
  exact And.intro E.invertibleClosed
    (And.intro E.preservesBracketClosed E.groupStructureClosed)

end AutomorphismsDerivationsOperatorsLieAlgebrasCanonicalLaneLean
end HautevilleHouse
