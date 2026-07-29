import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionsCelestialMechanicsRegularizationFoundationCanonicalLaneLean

structure RegularizationTransform where
  coordinateChange : ℝ^4 → ℝ^4
  timeTransformation : ℝ → ℝ
  hamiltonianStructure : Prop
  symplecticPreservation : Prop
  blowupResolution : Prop
  transformClosed : symplecticPreservation ∧ blowupResolution

theorem transform_closed_from_evidence (T : RegularizationTransform)
    (hSymp : T.symplecticPreservation) (hBlowup : T.blowupResolution) :
    T.transformClosed := by
  exact And.intro hSymp hBlowup

end CollisionsCelestialMechanicsRegularizationFoundationCanonicalLaneLean
end HautevilleHouse