import HautevilleHouse.BundleConvexityCanonicalLaneLean.ConvexBundle

namespace HautevilleHouse
namespace BundleConvexityCanonicalLaneLean

structure ConvexityEvidencePackage {B : ConvexBundlePackage} (E : ConvexBundleEvidence B) where
  totalSpaceConvex : Prop
  sectionConvex : Prop
  projectionConvex : Prop
  totalSpaceConvexClosed : totalSpaceConvex
  sectionConvexClosed : sectionConvex
  projectionConvexClosed : projectionConvex

structure ConvexityEvidence {B : ConvexBundlePackage} {E : ConvexBundleEvidence B}
    (P : ConvexityEvidencePackage E) where
  totalSpaceConvexClosed : P.totalSpaceConvex
  sectionConvexClosed : P.sectionConvex
  projectionConvexClosed : P.projectionConvex

def ConvexityClosed {B : ConvexBundlePackage} {E : ConvexBundleEvidence B}
    (P : ConvexityEvidencePackage E) : Prop :=
  P.totalSpaceConvex ∧ P.sectionConvex ∧ P.projectionConvex

theorem convexity_closed_from_evidence {B : ConvexBundlePackage} {E : ConvexBundleEvidence B}
    (P : ConvexityEvidencePackage E) (Ev : ConvexityEvidence P) : ConvexityClosed P := by
  exact And.intro Ev.totalSpaceConvexClosed
    (And.intro Ev.sectionConvexClosed Ev.projectionConvexClosed)

end BundleConvexityCanonicalLaneLean
end HautevilleHouse