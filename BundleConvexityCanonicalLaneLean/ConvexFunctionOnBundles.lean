import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityCanonicalLaneLean

structure Bundle (X : Type u) where
  space : Type v
  projection : space → X
  fiber : X → Type w

definition convexFunctionOnBundle {X : Type u} (B : Bundle X) (f : B.space → ℝ) : Prop :=
  ∀ (x : X) (p q : B.fiber x) (t : ℝ), 0 ≤ t → t ≤ 1 → f (B.projection p) = x → f (B.projection q) = x →
    f (t • p + (1 - t) • q) ≤ t • f p + (1 - t) • f q

end BundleConvexityCanonicalLaneLean
end HautevilleHouse