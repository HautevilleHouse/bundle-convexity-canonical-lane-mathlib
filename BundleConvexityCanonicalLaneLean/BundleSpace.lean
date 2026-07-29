import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityCanonicalLaneLean

structure BundleSpace where
  totalSpace : Type u
  baseSpace : Type v
  projection : totalSpace → baseSpace
  fiber : baseSpace → Type w
  topologyTotal : TopologicalSpace totalSpace
  topologyBase : TopologicalSpace baseSpace
  continuousProjection : Continuous projection

structure ConvexFiberBundle (B : BundleSpace) where
  fiberIsConvex : ∀ b : B.baseSpace, Convex ℝ (B.fiber b)
  fiberClosed : ∀ b : B.baseSpace, IsClosed (B.fiber b)
  sectionExists : ∃ s : (b : B.baseSpace) → B.fiber b, Continuous s

def BundleConvexityAdmittedObject (B : BundleSpace) (C : ConvexFiberBundle B) : Prop :=
  C.fiberIsConvex 0 ∧ C.fiberClosed 0

end BundleConvexityCanonicalLaneLean
end HautevilleHouse