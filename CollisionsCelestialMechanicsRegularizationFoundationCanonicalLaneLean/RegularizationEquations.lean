import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionsCelestialMechanicsRegularizationFoundationCanonicalLaneLean

structure RegularizationEquationsPackage where
  transformedCoordinates : Type u
  regularizedPotential : Type v
  collisionRegularizationTerms : Prop
  energyConservationUnderRegularization : Prop
  angularMomentumConservation : Prop
  timeTransformationLaw : Prop

structure RegularizationEquationsEvidence (E : RegularizationEquationsPackage) where
  collisionRegularizationTermsClosed : E.collisionRegularizationTerms
  energyConservationUnderRegularizationClosed : E.energyConservationUnderRegularization
  angularMomentumConservationClosed : E.angularMomentumConservation
  timeTransformationLawClosed : E.timeTransformationLaw

def RegularizationEquationsClosed (E : RegularizationEquationsPackage) : Prop :=
  E.collisionRegularizationTerms ∧ E.energyConservationUnderRegularization ∧
  E.angularMomentumConservation ∧ E.timeTransformationLaw

theorem regularization_equations_closed_from_evidence
    (E : RegularizationEquationsPackage) (Ev : RegularizationEquationsEvidence E) :
    RegularizationEquationsClosed E := by
  exact And.intro Ev.collisionRegularizationTermsClosed
    (And.intro Ev.energyConservationUnderRegularizationClosed
      (And.intro Ev.angularMomentumConservationClosed Ev.timeTransformationLawClosed))

end CollisionsCelestialMechanicsRegularizationFoundationCanonicalLaneLean
end HautevilleHouse
