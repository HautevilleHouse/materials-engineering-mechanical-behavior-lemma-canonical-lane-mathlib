import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMechanicalBehaviorLemmaCanonicalLaneLean

structure PlasticityPackage where
  yieldStress : Type
  hardeningRule : Prop
  flowRule : Prop
  plasticStrain : Type
  vonMisesCriterion : Prop
  hardeningModulus : Type

structure PlasticityEvidence (P : PlasticityPackage) where
  yieldStressClosed : P.yieldStress
  hardeningRuleClosed : P.hardeningRule
  flowRuleClosed : P.flowRule
  plasticStrainClosed : P.plasticStrain
  vonMisesCriterionClosed : P.vonMisesCriterion
  hardeningModulusClosed : P.hardeningModulus

def PlasticityClosed (P : PlasticityPackage) : Prop :=
  P.yieldStress ∧ P.hardeningRule ∧ P.flowRule ∧ P.plasticStrain ∧ P.vonMisesCriterion ∧ P.hardeningModulus

theorem plasticity_closed_from_evidence (P : PlasticityPackage) (E : PlasticityEvidence P) : PlasticityClosed P :=
  And.intro E.yieldStressClosed (And.intro E.hardeningRuleClosed (And.intro E.flowRuleClosed (And.intro E.plasticStrainClosed (And.intro E.vonMisesCriterionClosed E.hardeningModulusClosed))))

end MaterialsEngineeringMechanicalBehaviorLemmaCanonicalLaneLean
end HautevilleHouse