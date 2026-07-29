import canonicalLaneMathlib.AdmissibleClass

/-!
# Sundman Regularization Package

This module defines the structure for global regularization of the three-body
problem via the Sundman transformation. The package records the transformation
of the time variable to regularize all binary collisions simultaneously,
maintaining analyticity of the flow.
-/

namespace HautevilleHouse
namespace CollisionsCelestialMechanicsRegularizationFoundationCanonicalLaneLean

structure SundmanRegularizationPackage where
  totalEnergy : ℝ
  angularMomentum : ℝ³
  momentOfInertia : ℝ → ℝ
  collisionTimesSet : Set ℝ
  transformedTimeParameter : ℝ → ℝ
  regularizedTime : ℝ
  positionsRegularized : ℝ³ × ℝ³
  momentaRegularized : ℝ³ × ℝ³
  energyConstraint : Prop
  angularMomentumConstraint : Prop
  momentOfInertiaPositive : Prop
  collisionTimesDiscrete : Prop
  transformationAnalytic : Prop
  regularizationGlobal : Prop
  energyConstraintClosed : energyConstraint
  angularMomentumConstraintClosed : angularMomentumConstraint
  momentOfInertiaPositiveClosed : momentOfInertiaPositive
  collisionTimesDiscreteClosed : collisionTimesDiscrete
  transformationAnalyticClosed : transformationAnalytic
  regularizationGlobalClosed : regularizationGlobal

structure SundmanRegularizationEvidence
    (S : SundmanRegularizationPackage) where
  energyConstraintClosed : S.energyConstraint
  angularMomentumConstraintClosed : S.angularMomentumConstraint
  momentOfInertiaPositiveClosed : S.momentOfInertiaPositive
  collisionTimesDiscreteClosed : S.collisionTimesDiscrete
  transformationAnalyticClosed : S.transformationAnalytic
  regularizationGlobalClosed : S.regularizationGlobal

def SundmanRegularizationClosed (S : SundmanRegularizationPackage) : Prop :=
  S.energyConstraint ∧ S.angularMomentumConstraint ∧
  S.momentOfInertiaPositive ∧ S.collisionTimesDiscrete ∧
  S.transformationAnalytic ∧ S.regularizationGlobal

theorem sundman_regularization_closed_from_evidence
    (S : SundmanRegularizationPackage)
    (E : SundmanRegularizationEvidence S) :
    SundmanRegularizationClosed S := by
  exact And.intro E.energyConstraintClosed
    (And.intro E.angularMomentumConstraintClosed
      (And.intro E.momentOfInertiaPositiveClosed
        (And.intro E.collisionTimesDiscreteClosed
          (And.intro E.transformationAnalyticClosed E.regularizationGlobalClosed))))

end CollisionsCelestialMechanicsRegularizationFoundationCanonicalLaneLean
end HautevilleHouse
