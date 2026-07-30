import MaterialsEngineeringMechanicalBehaviorLemmaCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace MaterialsEngineeringMechanicalBehaviorLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MaterialsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MaterialsEngineeringMechanicalBehaviorLemmaCanonicalLaneLean
end HautevilleHouse