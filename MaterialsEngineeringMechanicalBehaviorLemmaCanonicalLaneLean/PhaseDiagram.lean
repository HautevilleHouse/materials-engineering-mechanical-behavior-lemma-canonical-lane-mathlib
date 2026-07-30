import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMechanicalBehaviorLemmaCanonicalLaneLean

structure PhaseDiagramPackage where
  components : List String
  phases : List String
  temperatureRange : Type
  compositionRange : Type
  phaseBoundaries : Prop
  eutecticPoint : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  componentsClosed : P.components
  phasesClosed : P.phases
  temperatureRangeClosed : P.temperatureRange
  compositionRangeClosed : P.compositionRange
  phaseBoundariesClosed : P.phaseBoundaries
  eutecticPointClosed : P.eutecticPoint

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.components ∧ P.phases ∧ P.temperatureRange ∧ P.compositionRange ∧ P.phaseBoundaries ∧ P.eutecticPoint

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P :=
  And.intro E.componentsClosed (And.intro E.phasesClosed (And.intro E.temperatureRangeClosed (And.intro E.compositionRangeClosed (And.intro E.phaseBoundariesClosed E.eutecticPointClosed))))

end MaterialsEngineeringMechanicalBehaviorLemmaCanonicalLaneLean
end HautevilleHouse