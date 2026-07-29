import BundleConvexityCanonicalLaneLean.SectionConvexity

namespace HautevilleHouse
namespace BundleConvexityCanonicalLaneLean

structure ConvexityPreservingMapsPackage {B₁ B₂ : Type} (F₁ : FiberConvexityPackage B₁) (F₂ : FiberConvexityPackage B₂) where
  map : (B₁ → B₂) → (∀ b, F₁.fiber b → F₂.fiber (map b))
  convexPreserving : Prop
  linearPreserving : Prop
  fiberwiseAffine : Prop

structure ConvexityPreservingMapsEvidence {B₁ B₂ : Type} {F₁ : FiberConvexityPackage B₁} {F₂ : FiberConvexityPackage B₂}
    (P : ConvexityPreservingMapsPackage F₁ F₂) where
  convexPreservingClosed : P.convexPreserving
  linearPreservingClosed : P.linearPreserving
  fiberwiseAffineClosed : P.fiberwiseAffine

def ConvexityPreservingMapsClosed {B₁ B₂ : Type} {F₁ : FiberConvexityPackage B₁} {F₂ : FiberConvexityPackage B₂}
    (P : ConvexityPreservingMapsPackage F₁ F₂) : Prop :=
  P.convexPreserving ∧ P.linearPreserving ∧ P.fiberwiseAffine

theorem convexity_preserving_maps_closed_from_evidence {B₁ B₂ : Type} {F₁ : FiberConvexityPackage B₁} {F₂ : FiberConvexityPackage B₂}
    (P : ConvexityPreservingMapsPackage F₁ F₂) (E : ConvexityPreservingMapsEvidence P) :
    ConvexityPreservingMapsClosed P := by
  exact And.intro E.convexPreservingClosed (And.intro E.linearPreservingClosed E.fiberwiseAffineClosed)

end BundleConvexityCanonicalLaneLean
end HautevilleHouse