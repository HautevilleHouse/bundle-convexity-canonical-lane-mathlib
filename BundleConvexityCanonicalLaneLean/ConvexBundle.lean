import HautevilleHouse.BundleConvexityCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BundleConvexityCanonicalLaneLean

structure ConvexBundlePackage where
  baseManifold : Type u
  fiberSpace : Type v
  totalSpace : Type w
  projectionMap : totalSpace → baseManifold
  sectionSpace : Type x
  convexCombination : totalSpace → totalSpace → ℝ → totalSpace
  convexCombinationInFiber : Prop
  fiberwiseConvex : Prop
  globalConvex : Prop
  convexCombinationInFiberClosed : convexCombinationInFiber
  fiberwiseConvexClosed : fiberwiseConvex
  globalConvexClosed : globalConvex

structure ConvexBundleEvidence (B : ConvexBundlePackage) where
  convexCombinationInFiberClosed : B.convexCombinationInFiber
  fiberwiseConvexClosed : B.fiberwiseConvex
  globalConvexClosed : B.globalConvex

def ConvexBundleClosed (B : ConvexBundlePackage) : Prop :=
  B.convexCombinationInFiber ∧ B.fiberwiseConvex ∧ B.globalConvex

theorem convex_bundle_closed_from_evidence (B : ConvexBundlePackage)
    (E : ConvexBundleEvidence B) : ConvexBundleClosed B := by
  exact And.intro E.convexCombinationInFiberClosed
    (And.intro E.fiberwiseConvexClosed E.globalConvexClosed)

end BundleConvexityCanonicalLaneLean
end HautevilleHouse