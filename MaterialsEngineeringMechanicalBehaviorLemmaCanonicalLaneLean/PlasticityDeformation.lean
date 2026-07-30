import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMechanicalBehaviorLemmaCanonicalLaneLean

structure PlasticityDeformationPackage where
  yieldCriterion : Prop
  plasticFlowRule : Prop
  hardeningModel : Prop
  vonMisesStress : Prop

structure PlasticityDeformationEvidence (P : PlasticityDeformationPackage) where
  yieldCriterionClosed : P.yieldCriterion
  plasticFlowRuleClosed : P.plasticFlowRule
  hardeningModelClosed : P.hardeningModel
  vonMisesStressClosed : P.vonMisesStress

def PlasticityDeformationClosed (P : PlasticityDeformationPackage) : Prop :=
  P.yieldCriterion ∧ P.plasticFlowRule ∧ P.hardeningModel ∧ P.vonMisesStress

theorem plasticity_deformation_closed_from_evidence (P : PlasticityDeformationPackage) (E : PlasticityDeformationEvidence P) : PlasticityDeformationClosed P := by
  exact And.intro E.yieldCriterionClosed (And.intro E.plasticFlowRuleClosed (And.intro E.hardeningModelClosed E.vonMisesStressClosed))

end MaterialsEngineeringMechanicalBehaviorLemmaCanonicalLaneLean
end HautevilleHouse