import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMechanicalBehaviorLemmaCanonicalLaneLean

structure ElasticityConstitutiveModel where
  stress : Type u
  strain : Type v
  stressStrainRelation : stress -> strain -> Prop
  hookesLaw : Prop
  stiffnessTensor : Prop
  materialSymmetries : Prop

structure ElasticityConstitutiveEvidence (E : ElasticityConstitutiveModel) where
  hookesLawClosed : E.hookesLaw
  stiffnessTensorClosed : E.stiffnessTensor
  materialSymmetriesClosed : E.materialSymmetries

def ElasticityConstitutiveClosed (E : ElasticityConstitutiveModel) : Prop :=
  E.hookesLaw ∧ E.stiffnessTensor ∧ E.materialSymmetries

theorem elasticity_constitutive_closed_from_evidence (E : ElasticityConstitutiveModel) (Ev : ElasticityConstitutiveEvidence E) :
    ElasticityConstitutiveClosed E := by
  exact And.intro Ev.hookesLawClosed (And.intro Ev.stiffnessTensorClosed Ev.materialSymmetriesClosed)

end MaterialsEngineeringMechanicalBehaviorLemmaCanonicalLaneLean
end HautevilleHouse