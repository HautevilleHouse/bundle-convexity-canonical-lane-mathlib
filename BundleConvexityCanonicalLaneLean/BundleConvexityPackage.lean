import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityCanonicalLaneLean

structure BundleConvexityPackage (A : BundleConvexityAdmissibleClass) where
  localConvexity : Prop
  globalConvexity : Prop
  transportWellDefined : Prop
  curvatureEffect : Prop

structure BundleConvexityEvidence (A : BundleConvexityAdmissibleClass) (P : BundleConvexityPackage A) where
  localConvexityClosed : P.localConvexity
  globalConvexityClosed : P.globalConvexity
  transportWellDefinedClosed : P.transportWellDefined
  curvatureEffectClosed : P.curvatureEffect

def BundleConvexityClosed (A : BundleConvexityAdmissibleClass) (P : BundleConvexityPackage A) : Prop :=
  P.localConvexity ∧ P.globalConvexity ∧ P.transportWellDefined ∧ P.curvatureEffect

theorem bundle_convexity_closed_from_evidence (A : BundleConvexityAdmissibleClass) (P : BundleConvexityPackage A) (E : BundleConvexityEvidence A P) : BundleConvexityClosed A P := by
  exact And.intro E.localConvexityClosed (And.intro E.globalConvexityClosed (And.intro E.transportWellDefinedClosed E.curvatureEffectClosed))

def bridgeClosed (A : BundleConvexityAdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : BundleConvexityAdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : BundleConvexityAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : BundleConvexityAdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end BundleConvexityCanonicalLaneLean
end HautevilleHouse