import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionsCelestialMechanicsRegularizationFoundationCanonicalLaneLean

structure McGeheeTransformationPackage where
  collisionBlowup : Type u
  regularizedPhaseSpace : Type v
  transformedFlow : Type w
  singularityRemoval : Prop
  invariantManifoldStructure : Prop
  collisionOrbitClassification : Prop

structure McGeheeTransformationEvidence (M : McGeheeTransformationPackage) where
  singularityRemovalClosed : M.singularityRemoval
  invariantManifoldStructureClosed : M.invariantManifoldStructure
  collisionOrbitClassificationClosed : M.collisionOrbitClassification

def McGeheeTransformationClosed (M : McGeheeTransformationPackage) : Prop :=
  M.singularityRemoval ∧ M.invariantManifoldStructure ∧ M.collisionOrbitClassification

theorem mcgehee_transformation_closed_from_evidence
    (M : McGeheeTransformationPackage) (Ev : McGeheeTransformationEvidence M) :
    McGeheeTransformationClosed M := by
  exact And.intro Ev.singularityRemovalClosed
    (And.intro Ev.invariantManifoldStructureClosed Ev.collisionOrbitClassificationClosed)

end CollisionsCelestialMechanicsRegularizationFoundationCanonicalLaneLean
end HautevilleHouse
