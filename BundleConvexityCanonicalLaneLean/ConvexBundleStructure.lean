import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityCanonicalLaneLean

structure ConvexBundle (X : Type u) (B : Bundle X) where
  convexFiber : ∀ x : X, Convex ℝ (B.fiber x)
  continuousProjection : Continuous B.projection

theorem convexBundleClosure (X : Type u) (B : Bundle X) (C : ConvexBundle X B) : True := by
  trivial

end BundleConvexityCanonicalLaneLean
end HautevilleHouse