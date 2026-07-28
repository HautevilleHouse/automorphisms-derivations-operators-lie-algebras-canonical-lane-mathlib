import AutomorphismsDerivationsOperatorsLieAlgebrasCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace AutomorphismsDerivationsOperatorsLieAlgebrasCanonicalLaneLean

def ConstrainedLieClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_lie_endgame (A : AdmissibleClass) :
    ConstrainedLieClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AutomorphismsDerivationsOperatorsLieAlgebrasCanonicalLaneLean
end HautevilleHouse