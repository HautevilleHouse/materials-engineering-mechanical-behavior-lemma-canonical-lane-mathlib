import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMechanicalBehaviorLemmaCanonicalLaneLean

structure PhaseDiagramPackage where
  temperature : Type u
  composition : Type v
  diagram : temperature -> composition -> Prop
  equilibriumLines : Prop
  phaseBoundaries : Prop
  leverRule : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  equilibriumLinesClosed : P.equilibriumLines
  phaseBoundariesClosed : P.phaseBoundaries
  leverRuleClosed : P.leverRule

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.equilibriumLines ∧ P.phaseBoundaries ∧ P.leverRule

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.equilibriumLinesClosed (And.intro E.phaseBoundariesClosed E.leverRuleClosed)

end MaterialsEngineeringMechanicalBehaviorLemmaCanonicalLaneLean
end HautevilleHouse