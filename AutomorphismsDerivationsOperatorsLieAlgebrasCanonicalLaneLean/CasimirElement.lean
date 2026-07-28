import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsDerivationsOperatorsLieAlgebrasCanonicalLaneLean

structure CasimirElementPackage where
  lieAlgebra : Type u
  killingForm : lieAlgebra → lieAlgebra → ℝ
  casimirElement : lieAlgebra
  central : Prop
  nondegeneracy : Prop

structure CasimirElementEvidence (C : CasimirElementPackage) where
  centralClosed : C.central
  nondegeneracyClosed : C.nondegeneracy

def CasimirElementClosed (C : CasimirElementPackage) : Prop :=
  C.central ∧ C.nondegeneracy

theorem casimir_element_closed_from_evidence
    (C : CasimirElementPackage) (E : CasimirElementEvidence C) :
    CasimirElementClosed C := by
  exact And.intro E.centralClosed E.nondegeneracyClosed

end AutomorphismsDerivationsOperatorsLieAlgebrasCanonicalLaneLean
end HautevilleHouse
