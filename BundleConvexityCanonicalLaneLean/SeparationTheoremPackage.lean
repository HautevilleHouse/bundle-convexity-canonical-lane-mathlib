import BundleConvexityCanonicalLaneLean.ConvexityEvidence

namespace HautevilleHouse
namespace BundleConvexityCanonicalLaneLean

structure SeparationTheoremPackage {B : BundleConvexityPackage} {C : BundleConvexityEvidence B}
    {P : ConvexityEvidencePackage C} where
  hahnBanachExtension : Prop
  separationOfDisjointConvexSets : Prop
  supportingHyperplane : Prop
  dualConeCharacterization : Prop

structure SeparationTheoremEvidence {B : BundleConvexityPackage} {C : BundleConvexityEvidence B}
    {P : ConvexityEvidencePackage C} (S : SeparationTheoremPackage P) where
  hahnBanachExtensionClosed : S.hahnBanachExtension
  separationOfDisjointConvexSetsClosed : S.separationOfDisjointConvexSets
  supportingHyperplaneClosed : S.supportingHyperplane
  dualConeCharacterizationClosed : S.dualConeCharacterization

def SeparationTheoremClosed {B : BundleConvexityPackage} {C : BundleConvexityEvidence B}
    {P : ConvexityEvidencePackage C} (S : SeparationTheoremPackage P) : Prop :=
  S.hahnBanachExtension ∧ S.separationOfDisjointConvexSets ∧
  S.supportingHyperplane ∧ S.dualConeCharacterization

theorem separation_theorem_closed_from_evidence {B : BundleConvexityPackage} {C : BundleConvexityEvidence B}
    {P : ConvexityEvidencePackage C} (S : SeparationTheoremPackage P)
    (E : SeparationTheoremEvidence S) : SeparationTheoremClosed S := by
  exact And.intro E.hahnBanachExtensionClosed
    (And.intro E.separationOfDisjointConvexSetsClosed
      (And.intro E.supportingHyperplaneClosed E.dualConeCharacterizationClosed))

end BundleConvexityCanonicalLaneLean
end HautevilleHouse