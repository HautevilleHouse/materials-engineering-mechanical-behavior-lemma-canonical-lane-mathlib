import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMechanicalBehaviorLemmaCanonicalLaneLean

structure ElasticityTheoryPackage where
  stressTensorDefinition : Prop
  strainTensorDefinition : Prop
  hookesLaw : Prop
  elasticConstants : Prop

structure ElasticityTheoryEvidence (E : ElasticityTheoryPackage) where
  stressTensorDefinitionClosed : E.stressTensorDefinition
  strainTensorDefinitionClosed : E.strainTensorDefinition
  hookesLawClosed : E.hookesLaw
  elasticConstantsClosed : E.elasticConstants

def ElasticityTheoryClosed (E : ElasticityTheoryPackage) : Prop :=
  E.stressTensorDefinition ∧ E.strainTensorDefinition ∧ E.hookesLaw ∧ E.elasticConstants

theorem elasticity_theory_closed_from_evidence (E : ElasticityTheoryPackage) (Ev : ElasticityTheoryEvidence E) : ElasticityTheoryClosed E := by
  exact And.intro Ev.stressTensorDefinitionClosed (And.intro Ev.strainTensorDefinitionClosed (And.intro Ev.hookesLawClosed Ev.elasticConstantsClosed))

end MaterialsEngineeringMechanicalBehaviorLemmaCanonicalLaneLean
end HautevilleHouse