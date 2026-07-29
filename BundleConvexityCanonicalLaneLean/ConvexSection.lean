import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityCanonicalLaneLean

structure ConvexSection {α β : Type u} (B : ConvexBundle α β) where
  sectionMap : α → β
  fiberwiseConvex : Prop
  fiberwiseConvexClosed : fiberwiseConvex

def ConvexSectionClosed {α β : Type u} {B : ConvexBundle α β} (s : ConvexSection B) : Prop :=
  s.fiberwiseConvex

end BundleConvexityCanonicalLaneLean
end HautevilleHouse