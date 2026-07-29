import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityCanonicalLaneLean

structure SectionConvexityPackage (A : AdmissibleClass) where
  globalSectionExists : Prop
  fiberwiseConvex : Prop
  sectionLiftProperty : Prop

structure SectionConvexityEvidence (A : AdmissibleClass) (P : SectionConvexityPackage A) where
  globalSectionExistsClosed : P.globalSectionExists
  fiberwiseConvexClosed : P.fiberwiseConvex
  sectionLiftPropertyClosed : P.sectionLiftProperty

def SectionConvexityClosed (A : AdmissibleClass) (P : SectionConvexityPackage A) : Prop :=
  P.globalSectionExists ∧ P.fiberwiseConvex ∧ P.sectionLiftProperty

theorem section_convexity_closed_from_evidence (A : AdmissibleClass) (P : SectionConvexityPackage A) (E : SectionConvexityEvidence A P) :
    SectionConvexityClosed A P := by
  exact And.intro E.globalSectionExistsClosed (And.intro E.fiberwiseConvexClosed E.sectionLiftPropertyClosed)

end BundleConvexityCanonicalLaneLean
end HautevilleHouse