import BundleConvexityCanonicalLaneLean.BundleConvexityCore

/-!
# Convex Bundle Section Package
-/

namespace HautevilleHouse
namespace BundleConvexityCanonicalLaneLean

structure ConvexBundleSectionPackage (O : BundleConvexAdmittedObject) where
  sectionSet : Set (O.baseManifold → O.fiberType)
  convexCombinationClosed : Prop
  pointwiseConvex : Prop
  boundedness : Prop

structure ConvexBundleSectionEvidence (O : BundleConvexAdmittedObject)
    (P : ConvexBundleSectionPackage O) where
  convexCombinationClosedTerm : P.convexCombinationClosed
  pointwiseConvexTerm : P.pointwiseConvex
  boundednessTerm : P.boundedness

def ConvexBundleSectionClosed (O : BundleConvexAdmittedObject)
    (P : ConvexBundleSectionPackage O) : Prop :=
  P.convexCombinationClosed ∧ P.pointwiseConvex ∧ P.boundedness

theorem convex_bundle_section_closed_from_evidence (O : BundleConvexAdmittedObject)
    (P : ConvexBundleSectionPackage O) (E : ConvexBundleSectionEvidence O P) :
    ConvexBundleSectionClosed O P := by
  exact And.intro E.convexCombinationClosedTerm
    (And.intro E.pointwiseConvexTerm E.boundednessTerm)

end BundleConvexityCanonicalLaneLean
end HautevilleHouse