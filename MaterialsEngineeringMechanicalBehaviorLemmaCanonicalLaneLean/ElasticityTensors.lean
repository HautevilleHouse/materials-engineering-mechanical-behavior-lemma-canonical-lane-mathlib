import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMechanicalBehaviorLemmaCanonicalLaneLean

structure ElasticityTensorsPackage where
  stressTensor : Type u
  strainTensor : Type v
  stiffnessTensor : Type w
  hookesLaw : Prop
  isotropyCondition : Prop
  strainEnergyDensity : Prop

structure ElasticityTensorsEvidence (E : ElasticityTensorsPackage) where
  hookesLawClosed : E.hookesLaw
  isotropyConditionClosed : E.isotropyCondition
  strainEnergyDensityClosed : E.strainEnergyDensity

def ElasticityTensorsClosed (E : ElasticityTensorsPackage) : Prop :=
  E.hookesLaw ∧ E.isotropyCondition ∧ E.strainEnergyDensity

theorem elasticity_tensors_closed_from_evidence (E : ElasticityTensorsPackage) (Ev : ElasticityTensorsEvidence E) :
    ElasticityTensorsClosed E := by
  exact And.intro Ev.hookesLawClosed
    (And.intro Ev.isotropyConditionClosed Ev.strainEnergyDensityClosed)

end MaterialsEngineeringMechanicalBehaviorLemmaCanonicalLaneLean
end HautevilleHouse