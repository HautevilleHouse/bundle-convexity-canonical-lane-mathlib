import BundleConvexityCanonicalLaneLean.ConvexityPreservingMaps

namespace HautevilleHouse
namespace BundleConvexityCanonicalLaneLean

structure BundleConvexityFoundation (B : Type) where
  fiberPackage : FiberConvexityPackage B
  fiberEvidence : FiberConvexityEvidence fiberPackage
  sectionPackage : SectionConvexityPackage fiberPackage
  sectionEvidence : SectionConvexityEvidence sectionPackage
  mapsPackage : ConvexityPreservingMapsPackage fiberPackage fiberPackage
  mapsEvidence : ConvexityPreservingMapsEvidence mapsPackage

def BundleConvexityFoundationClosed (B : Type) (A : BundleConvexityFoundation B) : Prop :=
  FiberConvexityClosed A.fiberPackage ∧
  SectionConvexityClosed A.sectionPackage ∧
  ConvexityPreservingMapsClosed A.mapsPackage

theorem bundle_convexity_foundation_closed_from_evidence (B : Type) (A : BundleConvexityFoundation B) :
    BundleConvexityFoundationClosed B A := by
  exact And.intro (fiber_convexity_closed_from_evidence A.fiberPackage A.fiberEvidence)
    (And.intro (section_convexity_closed_from_evidence A.sectionPackage A.sectionEvidence)
      (convexity_preserving_maps_closed_from_evidence A.mapsPackage A.mapsEvidence))

end BundleConvexityCanonicalLaneLean
end HautevilleHouse