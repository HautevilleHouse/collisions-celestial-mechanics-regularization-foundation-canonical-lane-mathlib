import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CollisionsCelestialMechanicsRegularizationFoundationCanonicalLaneLean.LeviCivitaRegularization

namespace HautevilleHouse
namespace CollisionsCelestialMechanicsRegularizationFoundationCanonicalLaneLean

structure KustaanheimoStiefelRegularizationPackage {T : TwoBodyProblemPackage}
    {R : RegularizationFoundationPackage}
    {L : LeviCivitaRegularizationPackage R} where
  quaternionCoordinateTransformation : Prop
  regularizedEquations : Prop
  collisionRemovalThreeD : Prop
  solutionExtensionThreeD : Prop

structure KustaanheimoStiefelRegularizationEvidence
    {T : TwoBodyProblemPackage} {R : RegularizationFoundationPackage}
    {L : LeviCivitaRegularizationPackage R}
    (K : KustaanheimoStiefelRegularizationPackage L) where
  quaternionCoordinateTransformationClosed : K.quaternionCoordinateTransformation
  regularizedEquationsClosed : K.regularizedEquations
  collisionRemovalThreeDClosed : K.collisionRemovalThreeD
  solutionExtensionThreeDClosed : K.solutionExtensionThreeD

def KustaanheimoStiefelRegularizationClosed
    {T : TwoBodyProblemPackage} {R : RegularizationFoundationPackage}
    {L : LeviCivitaRegularizationPackage R}
    (K : KustaanheimoStiefelRegularizationPackage L) : Prop :=
  K.quaternionCoordinateTransformation ∧ K.regularizedEquations ∧
  K.collisionRemovalThreeD ∧ K.solutionExtensionThreeD

theorem kustaanheimo_stiefel_regularization_closed_from_evidence
    {T : TwoBodyProblemPackage} {R : RegularizationFoundationPackage}
    {L : LeviCivitaRegularizationPackage R}
    (K : KustaanheimoStiefelRegularizationPackage L)
    (E : KustaanheimoStiefelRegularizationEvidence K) :
    KustaanheimoStiefelRegularizationClosed K := by
  exact And.intro E.quaternionCoordinateTransformationClosed
    (And.intro E.regularizedEquationsClosed
      (And.intro E.collisionRemovalThreeDClosed E.solutionExtensionThreeDClosed))

end CollisionsCelestialMechanicsRegularizationFoundationCanonicalLaneLean
end HautevilleHouse
