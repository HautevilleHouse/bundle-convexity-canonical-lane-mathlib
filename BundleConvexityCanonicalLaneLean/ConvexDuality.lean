import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityCanonicalLaneLean

structure ConvexDualityPackage where
  primalSpace : Type u
  dualSpace : Type v
  pairing : primalSpace → dualSpace → ℝ
  biconjugateTheorem : Prop
  fenchelMoreauTheorem : Prop

structure ConvexDualityEvidence (D : ConvexDualityPackage) where
  biconjugateTheoremClosed : D.biconjugateTheorem
  fenchelMoreauTheoremClosed : D.fenchelMoreauTheorem

def ConvexDualityClosed (D : ConvexDualityPackage) : Prop :=
  D.biconjugateTheorem ∧ D.fenchelMoreauTheorem

theorem convex_duality_closed_from_evidence
    (D : ConvexDualityPackage) (E : ConvexDualityEvidence D) :
    ConvexDualityClosed D := by
  exact And.intro E.biconjugateTheoremClosed E.fenchelMoreauTheoremClosed

end BundleConvexityCanonicalLaneLean
end HautevilleHouse