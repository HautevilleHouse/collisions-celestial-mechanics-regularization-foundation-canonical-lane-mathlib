import canonicalLaneMathlib.AdmissibleClass

/-!
# Binary Collision Regularization Package

This module defines the structure for regularizing binary collisions in the
restricted three-body problem via the Levi-Civita transformation. The
package records proof obligations for regularizing a binary collision
through the standard conformal transformation and integrating the resulting
regularized equations of motion.
-/

namespace HautevilleHouse
namespace CollisionsCelestialMechanicsRegularizationFoundationCanonicalLaneLean

structure LeviCivitaRegularizationPackage where
  collisionEpoch : ℝ
  impactParameter : ℝ
  relativeVelocityAtCollision : ℝ
  transformedTime : ℝ → ℝ
  transformedCoordinates : ℝ² → ℝ²
  transformationConformalFactor : ℝ² → ℝ
  hamiltonian : ℝ⁴ → ℝ
  regularizedTime : ℝ
  regularizedPosition : ℝ²
  regularizedMomentum : ℝ²
  energyConstraint : Prop
  momentumConstraint : Prop
  collisionSurfaceDefined : Prop
  transformationNonDegenerate : Prop
  hamiltonianRegular : Prop
  integrationDomain : Prop
  collisionSurfaceDefinedClosed : collisionSurfaceDefined
  transformationNonDegenerateClosed : transformationNonDegenerate
  hamiltonianRegularClosed : hamiltonianRegular
  integrationDomainClosed : integrationDomain
  energyConstraintClosed : energyConstraint
  momentumConstraintClosed : momentumConstraint

structure LeviCivitaRegularizationEvidence
    (L : LeviCivitaRegularizationPackage) where
  collisionSurfaceDefinedClosed : L.collisionSurfaceDefined
  transformationNonDegenerateClosed : L.transformationNonDegenerate
  hamiltonianRegularClosed : L.hamiltonianRegular
  integrationDomainClosed : L.integrationDomain
  energyConstraintClosed : L.energyConstraint
  momentumConstraintClosed : L.momentumConstraint

def LeviCivitaRegularizationClosed (L : LeviCivitaRegularizationPackage) : Prop :=
  L.collisionSurfaceDefined ∧ L.transformationNonDegenerate ∧
  L.hamiltonianRegular ∧ L.integrationDomain ∧
  L.energyConstraint ∧ L.momentumConstraint

theorem levi_civita_regularization_closed_from_evidence
    (L : LeviCivitaRegularizationPackage)
    (E : LeviCivitaRegularizationEvidence L) :
    LeviCivitaRegularizationClosed L := by
  exact And.intro E.collisionSurfaceDefinedClosed
    (And.intro E.transformationNonDegenerateClosed
      (And.intro E.hamiltonianRegularClosed
        (And.intro E.integrationDomainClosed
          (And.intro E.energyConstraintClosed E.momentumConstraintClosed))))

end CollisionsCelestialMechanicsRegularizationFoundationCanonicalLaneLean
end HautevilleHouse
