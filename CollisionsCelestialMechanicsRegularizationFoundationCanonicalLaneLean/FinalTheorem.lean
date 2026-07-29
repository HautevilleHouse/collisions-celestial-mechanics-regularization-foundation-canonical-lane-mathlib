import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CollisionsCelestialMechanicsRegularizationFoundationCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.CollisionsCelestialMechanicsRegularizationFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CollisionsCelestialMechanicsRegularizationFoundationCanonicalLaneLean

def ConstrainedCollisionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_collision_endgame (A : AdmissibleClass) :
    ConstrainedCollisionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CollisionsCelestialMechanicsRegularizationFoundationCanonicalLaneLean
end HautevilleHouse
