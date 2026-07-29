import canonicalLaneMathlib.AdmissibleClass

/-!
# Bundle Convexity Core Package
-/

namespace HautevilleHouse
namespace BundleConvexityCanonicalLaneLean

structure BundleConvexAdmittedObject where
  baseManifold : Type u
  fiberType : Type v
  projection : baseManifold → fiberType
  convexSection : Set (baseManifold → fiberType)
  convexityCondition : Prop
  conclusion : convexityCondition

structure BundleConvexWitnessClosed (O : BundleConvexAdmittedObject) : Prop :=
  O.convexityCondition

end BundleConvexityCanonicalLaneLean
end HautevilleHouse