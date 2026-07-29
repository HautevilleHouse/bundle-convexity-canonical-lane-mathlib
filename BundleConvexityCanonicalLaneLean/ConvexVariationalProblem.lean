import BundleConvexityCanonicalLaneLean.ConvexBundleSection

/-!
# Convex Variational Problem Package
-/

namespace HautevilleHouse
namespace BundleConvexityCanonicalLaneLean

structure ConvexVariationalProblemPackage (O : BundleConvexAdmittedObject)
    (S : ConvexBundleSectionPackage O) where
  objectiveFunctional : Type w
  constraintSet : Set (O.baseManifold → O.fiberType)
  existenceMinimizer : Prop
  uniquenessMinimizer : Prop

structure ConvexVariationalProblemEvidence (O : BundleConvexAdmittedObject)
    (S : ConvexBundleSectionPackage O) (V : ConvexVariationalProblemPackage O S) where
  existenceMinimizerTerm : V.existenceMinimizer
  uniquenessMinimizerTerm : V.uniquenessMinimizer

def ConvexVariationalProblemClosed (O : BundleConvexAdmittedObject)
    (S : ConvexBundleSectionPackage O) (V : ConvexVariationalProblemPackage O S) : Prop :=
  V.existenceMinimizer ∧ V.uniquenessMinimizer

theorem convex_variational_problem_closed_from_evidence (O : BundleConvexAdmittedObject)
    (S : ConvexBundleSectionPackage O) (V : ConvexVariationalProblemPackage O S)
    (E : ConvexVariationalProblemEvidence O S V) : ConvexVariationalProblemClosed O S V := by
  exact And.intro E.existenceMinimizerTerm E.uniquenessMinimizerTerm

end BundleConvexityCanonicalLaneLean
end HautevilleHouse