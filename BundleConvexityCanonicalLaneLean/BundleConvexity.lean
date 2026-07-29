import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityCanonicalLaneLean

structure BundleConvexityPackage where
  totalSpace : Type u
  baseSpace : Type v
  projection : totalSpace → baseSpace
  fiberType : baseSpace → Type w
  fiberwiseConvexity : Prop
  sectionsClosedUnderConvexCombinations : Prop
  convexSectionExistence : Prop

structure BundleConvexityEvidence (B : BundleConvexityPackage) where
  fiberwiseConvexityClosed : B.fiberwiseConvexity
  sectionsClosedUnderConvexCombinationsClosed : B.sectionsClosedUnderConvexCombinations
  convexSectionExistenceClosed : B.convexSectionExistence

def BundleConvexityClosed (B : BundleConvexityPackage) : Prop :=
  B.fiberwiseConvexity ∧ B.sectionsClosedUnderConvexCombinations ∧ B.convexSectionExistence

theorem bundle_convexity_closed_from_evidence
    (B : BundleConvexityPackage) (E : BundleConvexityEvidence B) :
    BundleConvexityClosed B := by
  exact And.intro E.fiberwiseConvexityClosed
    (And.intro E.sectionsClosedUnderConvexCombinationsClosed
      E.convexSectionExistenceClosed)

end BundleConvexityCanonicalLaneLean
end HautevilleHouse