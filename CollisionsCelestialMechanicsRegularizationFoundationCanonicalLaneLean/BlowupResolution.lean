import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionsCelestialMechanicsRegularizationFoundationCanonicalLaneLean

structure BlowupResolutionPackage where
  collisionOrbit : Type u
  blowupSpace : Type u
  exceptionalDivisor : Type u
  strictTransform : Type u
  resolutionMorphism : blowupSpace → collisionOrbit
  divisorRegular : Prop
  transformSmooth : Prop
  resolutionClosed : divisorRegular ∧ transformSmooth

structure BlowupResolutionEvidence (P : BlowupResolutionPackage) where
  divisorRegularClosed : P.divisorRegular
  transformSmoothClosed : P.transformSmooth

theorem blowup_resolution_closed (P : BlowupResolutionPackage)
    (E : BlowupResolutionEvidence P) : P.resolutionClosed := by
  exact And.intro E.divisorRegularClosed E.transformSmoothClosed

end CollisionsCelestialMechanicsRegularizationFoundationCanonicalLaneLean
end HautevilleHouse