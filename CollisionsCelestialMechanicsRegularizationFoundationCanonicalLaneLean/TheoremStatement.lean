import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionsCelestialMechanicsRegularizationFoundationCanonicalLaneLean

structure CelestialAdmittedObject where
  carrier : Type
  topology : TopologicalSpace carrier
  regularizationComplete : Prop
  conclusion : regularizationComplete

def CelestialWitnessClosed (O : CelestialAdmittedObject) : Prop :=
  O.regularizationComplete

end CollisionsCelestialMechanicsRegularizationFoundationCanonicalLaneLean
end HautevilleHouse
