import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionsCelestialMechanicsRegularizationFoundationCanonicalLaneLean

structure CollisionOrbitStructure (A : AdmissibleClass) where
  threeBodySystem : Type u
  massParameters : threeBodySystem → ℝ
  collisionSet : Set threeBodySystem
  regularizationMap : threeBodySystem → ℝ^4
  analyticExtension : Prop
  collisionRemovable : Prop
  extensionClosed : collisionRemovable

def CollisionOrbitClosed (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

end CollisionsCelestialMechanicsRegularizationFoundationCanonicalLaneLean
end HautevilleHouse