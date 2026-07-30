import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMechanicalBehaviorLemmaCanonicalLaneLean

structure DislocationDynamicsPackage where
  dislocationLine : Type u
  burgersVector : Type v
  slipSystem : Type w
  peierlsStress : Prop
  dislocationVelocity : Prop
  strainHardening : Prop

structure DislocationDynamicsEvidence (D : DislocationDynamicsPackage) where
  peierlsStressClosed : D.peierlsStress
  dislocationVelocityClosed : D.dislocationVelocity
  strainHardeningClosed : D.strainHardening

def DislocationDynamicsClosed (D : DislocationDynamicsPackage) : Prop :=
  D.peierlsStress ∧ D.dislocationVelocity ∧ D.strainHardening

theorem dislocation_dynamics_closed_from_evidence (D : DislocationDynamicsPackage) (E : DislocationDynamicsEvidence D) :
    DislocationDynamicsClosed D := by
  exact And.intro E.peierlsStressClosed
    (And.intro E.dislocationVelocityClosed E.strainHardeningClosed)

end MaterialsEngineeringMechanicalBehaviorLemmaCanonicalLaneLean
end HautevilleHouse