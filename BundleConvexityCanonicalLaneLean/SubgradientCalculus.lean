import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityCanonicalLaneLean

structure SubgradientCalculusPackage where
  functionSpace : Type u
  domain : Type v
  subgradientSet : (functionSpace → ℝ) → functionSpace → Set (functionSpace → ℝ)
  subgradientInequality : Prop
  sumRule : Prop
  chainRule : Prop

structure SubgradientCalculusEvidence (S : SubgradientCalculusPackage) where
  subgradientInequalityClosed : S.subgradientInequality
  sumRuleClosed : S.sumRule
  chainRuleClosed : S.chainRule

def SubgradientCalculusClosed (S : SubgradientCalculusPackage) : Prop :=
  S.subgradientInequality ∧ S.sumRule ∧ S.chainRule

theorem subgradient_calculus_closed_from_evidence
    (S : SubgradientCalculusPackage) (E : SubgradientCalculusEvidence S) :
    SubgradientCalculusClosed S := by
  exact And.intro E.subgradientInequalityClosed
    (And.intro E.sumRuleClosed E.chainRuleClosed)

end BundleConvexityCanonicalLaneLean
end HautevilleHouse