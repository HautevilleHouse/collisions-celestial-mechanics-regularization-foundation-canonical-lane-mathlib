import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionsCelestialMechanicsRegularizationFoundationCanonicalLaneLean

structure McGeheeCoordinatesPackage where
  phaseSpace : Type u
  radialCoordinate : ℝ
  angularCoordinate : ℝ
  momentumConjugate : ℝ
  timeRescaling : ℝ → ℝ
  collisionManifold : Prop
  gradientFlow : Prop
  coordinateClosed : collisionManifold ∧ gradientFlow

structure McGeheeCoordinatesEvidence (M : McGeheeCoordinatesPackage) where
  collisionManifoldClosed : M.collisionManifold
  gradientFlowClosed : M.gradientFlow

theorem mcgehee_coordinates_closed (M : McGeheeCoordinatesPackage)
    (E : McGeheeCoordinatesEvidence M) : M.coordinateClosed := by
  exact And.intro E.collisionManifoldClosed E.gradientFlowClosed

end CollisionsCelestialMechanicsRegularizationFoundationCanonicalLaneLean
end HautevilleHouse