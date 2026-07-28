import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsDerivationsOperatorsLieAlgebrasCanonicalLaneLean

structure UniversalEnvelopingAlgebraPackage where
  lieAlgebra : Type u
  envelopingAlgebra : Type v
  inclusionMap : lieAlgebra → envelopingAlgebra
  universalProperty : Prop
  poincareBirkhoffWitt : Prop

structure UniversalEnvelopingAlgebraEvidence (U : UniversalEnvelopingAlgebraPackage) where
  universalPropertyClosed : U.universalProperty
  poincareBirkhoffWittClosed : U.poincareBirkhoffWitt

def UniversalEnvelopingAlgebraClosed (U : UniversalEnvelopingAlgebraPackage) : Prop :=
  U.universalProperty ∧ U.poincareBirkhoffWitt

theorem universal_enveloping_algebra_closed_from_evidence
    (U : UniversalEnvelopingAlgebraPackage) (E : UniversalEnvelopingAlgebraEvidence U) :
    UniversalEnvelopingAlgebraClosed U := by
  exact And.intro E.universalPropertyClosed E.poincareBirkhoffWittClosed

end AutomorphismsDerivationsOperatorsLieAlgebrasCanonicalLaneLean
end HautevilleHouse
