import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityCanonicalLaneLean

structure BundleConvexityObject where
  baseManifold : Type u
  baseTopology : TopologicalSpace baseManifold
  totalSpace : Type v
  projection : totalSpace → baseManifold
  fiber : baseManifold → Type w
  convexStructure : (x : baseManifold) → Set (fiber x)
  fiberwiseConvex : (x : baseManifold) → Convex ℝ (convexStructure x)
  bundleConvexityFull : Prop

structure BundleConvexityAdmittedObject where
  object : BundleConvexityObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

structure AdmissibleClass where
  object : BundleConvexityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BundleConvexityWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BundleConvexityCanonicalLaneLean
end HautevilleHouse