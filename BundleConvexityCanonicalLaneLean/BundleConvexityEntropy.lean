import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityCanonicalLaneLean

structure BundleConvexityEntropyPackage where
  entropyFunctional : Type u
  reducedVolume : Type v
  monotonicityFormula : Prop
  entropyLowerBound : Prop
  noLocalCollapsingInput : Prop

structure BundleConvexityEntropyEvidence (Epkg : BundleConvexityEntropyPackage) where
  monotonicityFormulaClosed : Epkg.monotonicityFormula
  entropyLowerBoundClosed : Epkg.entropyLowerBound
  noLocalCollapsingInputClosed : Epkg.noLocalCollapsingInput

def BundleConvexityEntropyClosed (Epkg : BundleConvexityEntropyPackage) : Prop :=
  Epkg.monotonicityFormula ∧ Epkg.entropyLowerBound ∧ Epkg.noLocalCollapsingInput

theorem bundle_convexity_entropy_closed_from_evidence
    (Epkg : BundleConvexityEntropyPackage) (E : BundleConvexityEntropyEvidence Epkg) :
    BundleConvexityEntropyClosed Epkg := by
  exact And.intro E.monotonicityFormulaClosed
    (And.intro E.entropyLowerBoundClosed E.noLocalCollapsingInputClosed)

end BundleConvexityCanonicalLaneLean
end HautevilleHouse