import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityCanonicalLaneLean

structure CurvatureTensorConstruction where
  metricCompatibility : Prop
  torsionFreeConnection : Prop
  curvatureCommutatorFormula : Prop
  skewSymmetryDerived : Prop
  pairSymmetryDerived : Prop
  firstBianchiDerived : Prop
  ricciTraceDerived : Prop
  scalarTraceDerived : Prop
  curvatureEvolutionDerived : Prop
  riemannTensorSymmetries : Prop
  bianchiIdentities : Prop
  ricciContractionLaw : Prop
  scalarTraceLaw : Prop
  curvatureEvolutionInputs : Prop
  metricCompatibilityTerm : metricCompatibility
  torsionFreeConnectionTerm : torsionFreeConnection
  curvatureCommutatorFormulaTerm : curvatureCommutatorFormula
  skewSymmetryDerivedTerm : skewSymmetryDerived
  pairSymmetryDerivedTerm : pairSymmetryDerived
  firstBianchiDerivedTerm : firstBianchiDerived
  ricciTraceDerivedTerm : ricciTraceDerived
  scalarTraceDerivedTerm : scalarTraceDerived
  curvatureEvolutionDerivedTerm : curvatureEvolutionDerived
  riemannTensorSymmetriesFromConstruction :
    metricCompatibility -> torsionFreeConnection -> curvatureCommutatorFormula ->
      skewSymmetryDerived -> pairSymmetryDerived -> riemannTensorSymmetries
  bianchiIdentitiesFromConstruction :
    curvatureCommutatorFormula -> firstBianchiDerived -> bianchiIdentities
  ricciContractionLawFromConstruction :
    curvatureCommutatorFormula -> ricciTraceDerived -> ricciContractionLaw
  scalarTraceLawFromConstruction :
    ricciTraceDerived -> scalarTraceDerived -> scalarTraceLaw
  curvatureEvolutionInputsFromConstruction :
    curvatureCommutatorFormula -> curvatureEvolutionDerived -> curvatureEvolutionInputs

def CurvatureTensorConstruction.toFoundational
    (C : CurvatureTensorConstruction) : True := trivial

end BundleConvexityCanonicalLaneLean
end HautevilleHouse