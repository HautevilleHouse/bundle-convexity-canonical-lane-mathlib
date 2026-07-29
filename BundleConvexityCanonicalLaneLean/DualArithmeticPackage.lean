import BundleConvexityCanonicalLaneLean.SeparationTheoremPackage

namespace HautevilleHouse
namespace BundleConvexityCanonicalLaneLean

structure DualArithmeticPackage {B : BundleConvexityPackage} {C : BundleConvexityEvidence B}
    {P : ConvexityEvidencePackage C} {S : SeparationTheoremPackage P} where
  dualBundle : Type u
  dualConvexity : Prop
  biDualIsomorphism : Prop
  fenchelMoreauBiconjugate : Prop

structure DualArithmeticEvidence {B : BundleConvexityPackage} {C : BundleConvexityEvidence B}
    {P : ConvexityEvidencePackage C} {S : SeparationTheoremPackage P}
    (D : DualArithmeticPackage S) where
  dualConvexityClosed : D.dualConvexity
  biDualIsomorphismClosed : D.biDualIsomorphism
  fenchelMoreauBiconjugateClosed : D.fenchelMoreauBiconjugate

def DualArithmeticClosed {B : BundleConvexityPackage} {C : BundleConvexityEvidence B}
    {P : ConvexityEvidencePackage C} {S : SeparationTheoremPackage P}
    (D : DualArithmeticPackage S) : Prop :=
  D.dualConvexity ∧ D.biDualIsomorphism ∧ D.fenchelMoreauBiconjugate

theorem dual_arithmetic_closed_from_evidence {B : BundleConvexityPackage} {C : BundleConvexityEvidence B}
    {P : ConvexityEvidencePackage C} {S : SeparationTheoremPackage P}
    (D : DualArithmeticPackage S) (E : DualArithmeticEvidence D) :
    DualArithmeticClosed D := by
  exact And.intro E.dualConvexityClosed
    (And.intro E.biDualIsomorphismClosed E.fenchelMoreauBiconjugateClosed)

end BundleConvexityCanonicalLaneLean
end HautevilleHouse