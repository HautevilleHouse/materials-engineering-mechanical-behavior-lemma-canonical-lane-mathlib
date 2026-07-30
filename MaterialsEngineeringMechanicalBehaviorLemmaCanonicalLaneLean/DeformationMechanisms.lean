import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMechanicalBehaviorLemmaCanonicalLaneLean

structure DeformationMechanismsPackage where
  deformationMechanism : Type u
  creep : Prop
  plasticity : Prop
  viscoelasticity : Prop
  strainRate : Prop
  flowStress : Prop

structure DeformationMechanismsEvidence (D : DeformationMechanismsPackage) where
  creepClosed : D.creep
  plasticityClosed : D.plasticity
  viscoelasticityClosed : D.viscoelasticity
  strainRateClosed : D.strainRate
  flowStressClosed : D.flowStress

def DeformationMechanismsClosed (D : DeformationMechanismsPackage) : Prop :=
  D.creep ∧ D.plasticity ∧ D.viscoelasticity ∧ D.strainRate ∧ D.flowStress

theorem deformation_mechanisms_closed_from_evidence (D : DeformationMechanismsPackage) (E : DeformationMechanismsEvidence D) :
    DeformationMechanismsClosed D := by
  exact And.intro E.creepClosed
    (And.intro E.plasticityClosed
      (And.intro E.viscoelasticityClosed
        (And.intro E.strainRateClosed E.flowStressClosed)))

end MaterialsEngineeringMechanicalBehaviorLemmaCanonicalLaneLean
end HautevilleHouse