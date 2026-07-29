import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityCanonicalLaneLean

structure BundleConvexAdmittedObject where
  baseSpace : Type u
  bundle : baseSpace → Type v
  convexStructure : ∀ x, Set (bundle x)
  convexInEachFiber : Prop
  conclusion : convexInEachFiber

structure AdmissibleClass where
  object : BundleConvexAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end BundleConvexityCanonicalLaneLean
end HautevilleHouse