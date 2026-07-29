import BundleConvexityCanonicalLaneLean.BundleConvexityAdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityCanonicalLaneLean

structure BundleConvexityEndgameState where
  object : BundleConvexityAdmittedObject

open HautevilleHouse.CanonicalLaneMathlibCore

def bundleConvexityProjection : Projection BundleConvexityEndgameState := {
  toFun := λ x => x
  idempotent := by intro x; rfl
}

theorem bundle_convexity_projection_idempotent (x : BundleConvexityEndgameState) :
    bundleConvexityProjection.toFun (bundleConvexityProjection.toFun x) = bundleConvexityProjection.toFun x := by
  exact bundleConvexityProjection.idempotent x

end BundleConvexityCanonicalLaneLean
end HautevilleHouse