import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionsCelestialMechanicsRegularizationFoundationCanonicalLaneLean

structure TwoBodyProblemPackage where
  gravitationalPotential : Prop
  angularMomentumConservation : Prop
  energyConservation : Prop
  collisionCondition : Prop

structure TwoBodyProblemEvidence (T : TwoBodyProblemPackage) where
  gravitationalPotentialClosed : T.gravitationalPotential
  angularMomentumConservationClosed : T.angularMomentumConservation
  energyConservationClosed : T.energyConservation
  collisionConditionClosed : T.collisionCondition

def TwoBodyProblemClosed (T : TwoBodyProblemPackage) : Prop :=
  T.gravitationalPotential ∧ T.angularMomentumConservation ∧
  T.energyConservation ∧ T.collisionCondition

theorem two_body_problem_closed_from_evidence
    (T : TwoBodyProblemPackage) (E : TwoBodyProblemEvidence T) :
    TwoBodyProblemClosed T := by
  exact And.intro E.gravitationalPotentialClosed
    (And.intro E.angularMomentumConservationClosed
      (And.intro E.energyConservationClosed E.collisionConditionClosed))

end CollisionsCelestialMechanicsRegularizationFoundationCanonicalLaneLean
end HautevilleHouse
