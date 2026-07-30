import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMechanicalBehaviorLemmaCanonicalLaneLean

structure FatigueLifePackage where
  sNCurve : Prop
  enduranceLimit : Prop
  parisLaw : Prop
  fatigueCrackGrowth : Prop

structure FatigueLifeEvidence (F : FatigueLifePackage) where
  sNCurveClosed : F.sNCurve
  enduranceLimitClosed : F.enduranceLimit
  parisLawClosed : F.parisLaw
  fatigueCrackGrowthClosed : F.fatigueCrackGrowth

def FatigueLifeClosed (F : FatigueLifePackage) : Prop :=
  F.sNCurve ∧ F.enduranceLimit ∧ F.parisLaw ∧ F.fatigueCrackGrowth

theorem fatigue_life_closed_from_evidence (F : FatigueLifePackage) (E : FatigueLifeEvidence F) : FatigueLifeClosed F := by
  exact And.intro E.sNCurveClosed (And.intro E.enduranceLimitClosed (And.intro E.parisLawClosed E.fatigueCrackGrowthClosed))

end MaterialsEngineeringMechanicalBehaviorLemmaCanonicalLaneLean
end HautevilleHouse