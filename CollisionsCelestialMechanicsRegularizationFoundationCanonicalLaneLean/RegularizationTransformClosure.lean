import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionsCelestialMechanicsRegularizationFoundationCanonicalLaneLean

def regularizationTransformClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem regularization_transform_endgame (A : AdmissibleClass) :
    regularizationTransformClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CollisionsCelestialMechanicsRegularizationFoundationCanonicalLaneLean
end HautevilleHouse
