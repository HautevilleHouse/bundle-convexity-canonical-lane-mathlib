import canonicalLaneMathlib.AdmissibleClass
import .ConvexBundle
import .ConvexSection

namespace HautevilleHouse
namespace BundleConvexityCanonicalLaneLean

structure ConvexityAdmissibleObject where
  bundle : ConvexBundle ℕ ℕ
  section : ConvexSection bundle
  convexityWitness : ConvexSectionClosed section

def ConvexityAdmittedObject (A : ConvexityAdmissibleObject) : Prop :=
  A.convexityWitness

structure AdmissibleClass where
  object : ConvexityAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ConvexityAdmittedObject A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BundleConvexityCanonicalLaneLean
end HautevilleHouse