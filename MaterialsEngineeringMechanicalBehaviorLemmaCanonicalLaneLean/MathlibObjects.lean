import MaterialsEngineeringMechanicalBehaviorLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MaterialsEngineeringMechanicalBehaviorLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MaterialSpecimen where
  carrier : Type
  topology : TopologicalSpace carrier

structure MaterialsAdmittedObject where
  specimen : MaterialSpecimen
  elasticModulusPositive : Prop
  yieldStrengthExceeded : Prop
  fractureCriterionMet : Prop
  conclusion : fractureCriterionMet

structure MaterialsEndgameState where
  object : MaterialsAdmittedObject

def MaterialsWitnessClosed (O : MaterialsAdmittedObject) : Prop :=
  O.fractureCriterionMet

end MaterialsEngineeringMechanicalBehaviorLemmaCanonicalLaneLean
end HautevilleHouse