import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsDerivationsOperatorsLieAlgebrasCanonicalLaneLean

structure KillingFormPackage where
  lieAlgebra : Type u
  killingForm : lieAlgebra → lieAlgebra → ℝ
  symmetric : Prop
  invariant : Prop
  nondegenerate : Prop

structure KillingFormEvidence (K : KillingFormPackage) where
  symmetricClosed : K.symmetric
  invariantClosed : K.invariant
  nondegenerateClosed : K.nondegenerate

def KillingFormClosed (K : KillingFormPackage) : Prop :=
  K.symmetric ∧ K.invariant ∧ K.nondegenerate

theorem killing_form_closed_from_evidence
    (K : KillingFormPackage) (E : KillingFormEvidence K) :
    KillingFormClosed K := by
  exact And.intro E.symmetricClosed
    (And.intro E.invariantClosed E.nondegenerateClosed)

end AutomorphismsDerivationsOperatorsLieAlgebrasCanonicalLaneLean
end HautevilleHouse
