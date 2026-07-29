import canonicalLaneMathlib.AdmissibleClass
import .ConvexityBridge
import .ConvexityGate

namespace HautevilleHouse
namespace BundleConvexityCanonicalLaneLean

def ConstrainedConvexityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_convexity_endgame (A : AdmissibleClass) :
    ConstrainedConvexityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BundleConvexityCanonicalLaneLean
end HautevilleHouse