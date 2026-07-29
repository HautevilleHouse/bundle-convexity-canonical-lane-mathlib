import BundleConvexityCanonicalLaneLean.BundleConvexityAdmissibleClass

/-!
# Convex Structure Package
-/

namespace HautevilleHouse
namespace BundleConvexityCanonicalLaneLean

structure ConvexStructurePackage (X : BundleConvexityAdmittedObject) where
  fiberwiseConvexSets : (x : X.object.baseManifold) → Set (X.object.fiber x)
  convexityProof : (x : X.object.baseManifold) → Convex ℝ (fiberwiseConvexSets x)
  fiberwiseNonempty : (x : X.object.baseManifold) → (fiberwiseConvexSets x).Nonempty
  closureUnderOperations : Prop

structure ConvexStructureEvidence (X : BundleConvexityAdmittedObject)
    (C : ConvexStructurePackage X) where
  fiberwiseConvexSetsClosed : (x : X.object.baseManifold) → Convex ℝ (C.fiberwiseConvexSets x)
  fiberwiseNonemptyClosed : (x : X.object.baseManifold) → (C.fiberwiseConvexSets x).Nonempty
  closureUnderOperationsClosed : C.closureUnderOperations

def ConvexStructureClosed (X : BundleConvexityAdmittedObject)
    (C : ConvexStructurePackage X) : Prop :=
  ((x : X.object.baseManifold) → Convex ℝ (C.fiberwiseConvexSets x)) ∧
  ((x : X.object.baseManifold) → (C.fiberwiseConvexSets x).Nonempty) ∧
  C.closureUnderOperations

theorem convex_structure_closed_from_evidence (X : BundleConvexityAdmittedObject)
    (C : ConvexStructurePackage X) (E : ConvexStructureEvidence X C) :
    ConvexStructureClosed X C := by
  exact And.intro E.fiberwiseConvexSetsClosed
    (And.intro E.fiberwiseNonemptyClosed E.closureUnderOperationsClosed)

end BundleConvexityCanonicalLaneLean
end HautevilleHouse