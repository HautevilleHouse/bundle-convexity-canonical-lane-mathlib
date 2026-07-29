import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityCanonicalLaneLean

structure EndpointClassificationPackage (A : AdmissibleClass) where
  targetSpace : Type u
  targetTopology : TopologicalSpace targetSpace
  locallyConvex : Prop
  endpointMatchesConvexity : Prop

structure EndpointClassificationEvidence (A : AdmissibleClass) (E : EndpointClassificationPackage A) where
  locallyConvexClosed : E.locallyConvex
  endpointMatchesConvexityClosed : E.endpointMatchesConvexity

def EndpointClassificationClosed (A : AdmissibleClass) (E : EndpointClassificationPackage A) : Prop :=
  E.locallyConvex ∧ E.endpointMatchesConvexity

theorem endpoint_classification_closed_from_evidence (A : AdmissibleClass) (E : EndpointClassificationPackage A) (Ev : EndpointClassificationEvidence A E) :
    EndpointClassificationClosed A E := by
  exact And.intro Ev.locallyConvexClosed Ev.endpointMatchesConvexityClosed

end BundleConvexityCanonicalLaneLean
end HautevilleHouse
