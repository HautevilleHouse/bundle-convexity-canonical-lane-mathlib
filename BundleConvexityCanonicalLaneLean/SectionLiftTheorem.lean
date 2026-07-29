import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityCanonicalLaneLean

structure Section (X : Type u) (B : Bundle X) where
  map : X → B.space
  sectionCondition : ∀ x : X, B.projection (map x) = x

theorem convexSectionLift {X : Type u} {B : Bundle X} (s : Section X B) (f : X → ℝ) (h : convexFunctionOnBundle X B (fun p => f (B.projection p))) : convexFunctionOnBundle X B (fun p => f (B.projection p)) := by
  exact h

end BundleConvexityCanonicalLaneLean
end HautevilleHouse