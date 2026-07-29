import BundleConvexityCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityCanonicalLaneLean

structure FiberConvexityPackage (B : Type) where
  fiber : B → Type
  convexFiber : ∀ b, Prop
  convexCombinationClosed : Prop
  fiberLinearStructure : Prop

structure FiberConvexityEvidence {B : Type} (P : FiberConvexityPackage B) where
  convexFiberClosed : ∀ b, P.convexFiber b
  convexCombinationClosedClosed : P.convexCombinationClosed
  fiberLinearStructureClosed : P.fiberLinearStructure

def FiberConvexityClosed {B : Type} (P : FiberConvexityPackage B) : Prop :=
  (∀ b, P.convexFiber b) ∧ P.convexCombinationClosed ∧ P.fiberLinearStructure

theorem fiber_convexity_closed_from_evidence {B : Type} (P : FiberConvexityPackage B) (E : FiberConvexityEvidence P) :
    FiberConvexityClosed P := by
  exact And.intro E.convexFiberClosed (And.intro E.convexCombinationClosedClosed E.fiberLinearStructureClosed)

end BundleConvexityCanonicalLaneLean
end HautevilleHouse