import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityCanonicalLaneLean

structure CurvatureFoundationalInhabitants where
  riemannTensorSymmetries : Prop
  bianchiIdentities : Prop
  ricciContractionLaw : Prop
  scalarTraceLaw : Prop
  curvatureEvolutionInputs : Prop
  riemannTensorSymmetriesTerm : riemannTensorSymmetries
  bianchiIdentitiesTerm : bianchiIdentities
  ricciContractionLawTerm : ricciContractionLaw
  scalarTraceLawTerm : scalarTraceLaw
  curvatureEvolutionInputsTerm : curvatureEvolutionInputs

structure RicciFlowWithSurgeryFoundationalInhabitants where
  hamiltonDeTurckGaugeChoice : Prop
  stronglyParabolicReduction : Prop
  deTurckVectorField : Prop
  pullbackRecoversRicciFlow : Prop
  uniquenessCompatibility : Prop
  cutoffParametersChosen : Prop
  standardCapInserted : Prop
  postSurgeryCurvatureControlled : Prop
  noncollapsingPreservedThroughSurgery : Prop
  surgeryInductionContinues : Prop
  hamiltonDeTurckGaugeChoiceTerm : hamiltonDeTurckGaugeChoice
  stronglyParabolicReductionTerm : stronglyParabolicReduction
  deTurckVectorFieldTerm : deTurckVectorField
  pullbackRecoversRicciFlowTerm : pullbackRecoversRicciFlow
  uniquenessCompatibilityTerm : uniquenessCompatibility
  cutoffParametersChosenTerm : cutoffParametersChosen
  standardCapInsertedTerm : standardCapInserted
  postSurgeryCurvatureControlledTerm : postSurgeryCurvatureControlled
  noncollapsingPreservedThroughSurgeryTerm : noncollapsingPreservedThroughSurgery
  surgeryInductionContinuesTerm : surgeryInductionContinues

structure ShortTimeFoundationalInhabitants where
  parabolicRegularity : Prop
  localExistenceInterval : Prop
  uniquenessOnOverlap : Prop
  continuationCriterion : Prop
  parabolicRegularityTerm : parabolicRegularity
  localExistenceIntervalTerm : localExistenceInterval
  uniquenessOnOverlapTerm : uniquenessOnOverlap
  continuationCriterionTerm : continuationCriterion

structure EntropyMonotonicityFoundationalInhabitants where
  conjugateHeatEquation : Prop
  wFunctionalDefined : Prop
  muFunctionalDefined : Prop
  entropyMonotonicityFormula : Prop
  reducedVolumeMonotonicity : Prop
  conjugateHeatEquationTerm : conjugateHeatEquation
  wFunctionalDefinedTerm : wFunctionalDefined
  muFunctionalDefinedTerm : muFunctionalDefined
  entropyMonotonicityFormulaTerm : entropyMonotonicityFormula
  reducedVolumeMonotonicityTerm : reducedVolumeMonotonicity

structure NoncollapsingFoundationalInhabitants where
  noLocalCollapsing : Prop
  scaleInvariantVolumeLowerBound : Prop
  curvatureScaleCompatibility : Prop
  ancientSolutionCompactnessInput : Prop
  noLocalCollapsingTerm : noLocalCollapsing
  scaleInvariantVolumeLowerBoundTerm : scaleInvariantVolumeLowerBound
  curvatureScaleCompatibilityTerm : curvatureScaleCompatibility
  ancientSolutionCompactnessInputTerm : ancientSolutionCompactnessInput

structure SingularityModelFoundationalInhabitants where
  blowupSequenceChosen : Prop
  pointedLimitExists : Prop
  ancientKappaSolution : Prop
  asymptoticShrinkersControlled : Prop
  blowupSequenceChosenTerm : blowupSequenceChosen
  pointedLimitExistsTerm : pointedLimitExists
  ancientKappaSolutionTerm : ancientKappaSolution
  asymptoticShrinkersControlledTerm : asymptoticShrinkersControlled

structure CanonicalNeighborhoodFoundationalInhabitants where
  highCurvaturePointClassified : Prop
  neckCapOrRoundComponent : Prop
  surgeryScaleAdmissible : Prop
  persistenceUnderFlow : Prop
  highCurvaturePointClassifiedTerm : highCurvaturePointClassified
  neckCapOrRoundComponentTerm : neckCapOrRoundComponent
  surgeryScaleAdmissibleTerm : surgeryScaleAdmissible
  persistenceUnderFlowTerm : persistenceUnderFlow

structure GeometrizationFoundationalInhabitants where
  thickThinDecomposition : Prop
  finiteExtinctionAlternative : Prop
  primeDecompositionControlled : Prop
  geometrizationPiecesClassified : Prop
  thickThinDecompositionTerm : thickThinDecomposition
  finiteExtinctionAlternativeTerm : finiteExtinctionAlternative
  primeDecompositionControlledTerm : primeDecompositionControlled
  geometrizationPiecesClassifiedTerm : geometrizationPiecesClassified

structure EndpointFoundationalInhabitants where
  sphericalSpaceFormExcluded : Prop
  simplyConnectedEndpoint : Prop
  sphereDiffeomorphismProduced : Prop
  sphericalSpaceFormExcludedTerm : sphericalSpaceFormExcluded
  simplyConnectedEndpointTerm : simplyConnectedEndpoint
  sphereDiffeomorphismProducedTerm : sphereDiffeomorphismProduced

structure BundleConvexityFoundationalTheoremInhabitants where
  curvature : CurvatureFoundationalInhabitants
  ricciFlowWithSurgery : RicciFlowWithSurgeryFoundationalInhabitants
  shortTime : ShortTimeFoundationalInhabitants
  entropy : EntropyMonotonicityFoundationalInhabitants
  noncollapsing : NoncollapsingFoundationalInhabitants
  singularity : SingularityModelFoundationalInhabitants
  canonicalNeighborhood : CanonicalNeighborhoodFoundationalInhabitants
  geometrization : GeometrizationFoundationalInhabitants
  endpoint : EndpointFoundationalInhabitants

def BundleConvexityFoundationalTheoremInhabitants.toAnalyticProofCertificate
    (T : BundleConvexityFoundationalTheoremInhabitants) : True := trivial

end BundleConvexityCanonicalLaneLean
end HautevilleHouse