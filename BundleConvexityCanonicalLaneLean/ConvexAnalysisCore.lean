import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityCanonicalLaneLean

structure ConvexStructure (X : Type u) [TopologicalSpace X] [AddCommGroup X] [Module ℝ X] where
  convexSet : Set X → Prop
  convexHull : Set X → Set X
  isConvexHull : ∀ s : Set X, convexSet (convexHull s) ∧ s ⊆ convexHull s
  hullMinimal : ∀ s t : Set X, convexSet t → s ⊆ t → convexHull s ⊆ t

structure ConvexFunction (X : Type u) [TopologicalSpace X] [AddCommGroup X] [Module ℝ X] where
  domain : Set X
  f : domain → ℝ
  epigraph : Set (X × ℝ)
  convexEpigraph : Convex ℝ epigraph
  lowerSemicontinuous : ∀ (x : X) (y : ℝ), IsClosed {p : domain × ℝ | p.1 = x ∧ p.2 ≤ f p.1}

def ConvexAnalysisCoreClosed (C : ConvexStructure ℝ) : Prop :=
  C.convexSet (Set.univ) ∧ C.convexHull (Set.univ) = Set.univ

end BundleConvexityCanonicalLaneLean
end HautevilleHouse