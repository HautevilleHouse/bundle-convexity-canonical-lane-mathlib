import canonicalLaneMathlib.AdmissibleClass
import .ConvexityAdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ConvexityAdmittedObject A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.convexityWitness

end BundleConvexityCanonicalLaneLean
end HautevilleHouse