import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionsCelestialMechanicsRegularizationFoundationCanonicalLaneLean

structure RegularizationFoundationPackage where
  collisionModel : Prop
  regularizedCoordinates : Prop
  blowupProcedure : Prop
  stabilityGuarantee : Prop

structure RegularizationFoundationEvidence (R : RegularizationFoundationPackage) where
  collisionModelClosed : R.collisionModel
  regularizedCoordinatesClosed : R.regularizedCoordinates
  blowupProcedureClosed : R.blowupProcedure
  stabilityGuaranteeClosed : R.stabilityGuarantee

def RegularizationFoundationClosed (R : RegularizationFoundationPackage) : Prop :=
  R.collisionModel ∧ R.regularizedCoordinates ∧ R.blowupProcedure ∧ R.stabilityGuarantee

theorem regularization_foundation_closed_from_evidence
    (R : RegularizationFoundationPackage) (E : RegularizationFoundationEvidence R) :
    RegularizationFoundationClosed R := by
  exact And.intro E.collisionModelClosed
    (And.intro E.regularizedCoordinatesClosed
      (And.intro E.blowupProcedureClosed E.stabilityGuaranteeClosed))

end CollisionsCelestialMechanicsRegularizationFoundationCanonicalLaneLean
end HautevilleHouse
