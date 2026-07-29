import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CollisionsCelestialMechanicsRegularizationFoundationCanonicalLaneLean.TwoBodyProblem

namespace HautevilleHouse
namespace CollisionsCelestialMechanicsRegularizationFoundationCanonicalLaneLean

structure LeviCivitaRegularizationPackage {T : TwoBodyProblemPackage}
    (R : RegularizationFoundationPackage) where
  complexCoordinateTransformation : Prop
  regularizedHamiltonian : Prop
  collisionRemoval : Prop
  solutionExtension : Prop

structure LeviCivitaRegularizationEvidence {T : TwoBodyProblemPackage}
    {R : RegularizationFoundationPackage}
    (L : LeviCivitaRegularizationPackage R) where
  complexCoordinateTransformationClosed : L.complexCoordinateTransformation
  regularizedHamiltonianClosed : L.regularizedHamiltonian
  collisionRemovalClosed : L.collisionRemoval
  solutionExtensionClosed : L.solutionExtension

def LeviCivitaRegularizationClosed {T : TwoBodyProblemPackage}
    {R : RegularizationFoundationPackage}
    (L : LeviCivitaRegularizationPackage R) : Prop :=
  L.complexCoordinateTransformation ∧ L.regularizedHamiltonian ∧
  L.collisionRemoval ∧ L.solutionExtension

theorem levi_civita_regularization_closed_from_evidence
    {T : TwoBodyProblemPackage} {R : RegularizationFoundationPackage}
    (L : LeviCivitaRegularizationPackage R)
    (E : LeviCivitaRegularizationEvidence L) :
    LeviCivitaRegularizationClosed L := by
  exact And.intro E.complexCoordinateTransformationClosed
    (And.intro E.regularizedHamiltonianClosed
      (And.intro E.collisionRemovalClosed E.solutionExtensionClosed))

end CollisionsCelestialMechanicsRegularizationFoundationCanonicalLaneLean
end HautevilleHouse
