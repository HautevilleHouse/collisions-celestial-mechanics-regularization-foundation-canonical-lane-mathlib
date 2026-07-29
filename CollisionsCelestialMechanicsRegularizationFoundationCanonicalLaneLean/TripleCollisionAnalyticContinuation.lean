import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionsCelestialMechanicsRegularizationFoundationCanonicalLaneLean

structure TripleCollisionAnalyticContinuationPackage where
  tripleCollisionConfigurations : Type u
  blowupCoordinates : Type v
  collisionSurfaceStructure : Prop
  analyticContinuationAcrossTripleCollision : Prop
  ejectionOrbitClassification : Prop
  captureOrbitClassification : Prop
  angularMomentumRegularization : Prop

structure TripleCollisionAnalyticContinuationEvidence (T : TripleCollisionAnalyticContinuationPackage) where
  collisionSurfaceStructureClosed : T.collisionSurfaceStructure
  analyticContinuationAcrossTripleCollisionClosed : T.analyticContinuationAcrossTripleCollision
  ejectionOrbitClassificationClosed : T.ejectionOrbitClassification
  captureOrbitClassificationClosed : T.captureOrbitClassification
  angularMomentumRegularizationClosed : T.angularMomentumRegularization

def TripleCollisionAnalyticContinuationClosed (T : TripleCollisionAnalyticContinuationPackage) : Prop :=
  T.collisionSurfaceStructure ∧ T.analyticContinuationAcrossTripleCollision ∧
  T.ejectionOrbitClassification ∧ T.captureOrbitClassification ∧
  T.angularMomentumRegularization

theorem triple_collision_analytic_continuation_closed_from_evidence
    (T : TripleCollisionAnalyticContinuationPackage) (Ev : TripleCollisionAnalyticContinuationEvidence T) :
    TripleCollisionAnalyticContinuationClosed T := by
  exact And.intro Ev.collisionSurfaceStructureClosed
    (And.intro Ev.analyticContinuationAcrossTripleCollisionClosed
      (And.intro Ev.ejectionOrbitClassificationClosed
        (And.intro Ev.captureOrbitClassificationClosed Ev.angularMomentumRegularizationClosed)))

end CollisionsCelestialMechanicsRegularizationFoundationCanonicalLaneLean
end HautevilleHouse
