import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMechanicalBehaviorLemmaCanonicalLaneLean

structure ElasticityPackage where
  elasticModulus : Type
  poissonRatio : Type
  stressTensor : Type
  strainTensor : Type
  hookesLaw : Prop
  elasticConstants : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  elasticModulusClosed : E.elasticModulus
  poissonRatioClosed : E.poissonRatio
  stressTensorClosed : E.stressTensor
  strainTensorClosed : E.strainTensor
  hookesLawClosed : E.hookesLaw
  elasticConstantsClosed : E.elasticConstants

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.elasticModulus ∧ E.poissonRatio ∧ E.stressTensor ∧ E.strainTensor ∧ E.hookesLaw ∧ E.elasticConstants

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) : ElasticityClosed E :=
  And.intro Ev.elasticModulusClosed (And.intro Ev.poissonRatioClosed (And.intro Ev.stressTensorClosed (And.intro Ev.strainTensorClosed (And.intro Ev.hookesLawClosed Ev.elasticConstantsClosed))))

end MaterialsEngineeringMechanicalBehaviorLemmaCanonicalLaneLean
end HautevilleHouse