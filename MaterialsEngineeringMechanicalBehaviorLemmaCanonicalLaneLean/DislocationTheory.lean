import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMechanicalBehaviorLemmaCanonicalLaneLean

structure DislocationTheoryPackage where
  dislocationLine : Type u
  burgersVector : Prop
  slipSystem : Prop
  peierlsStress : Prop
  frankReadSource : Prop
  dislocationDensity : Prop

structure DislocationTheoryEvidence (D : DislocationTheoryPackage) where
  burgersVectorClosed : D.burgersVector
  slipSystemClosed : D.slipSystem
  peierlsStressClosed : D.peierlsStress
  frankReadSourceClosed : D.frankReadSource
  dislocationDensityClosed : D.dislocationDensity

def DislocationTheoryClosed (D : DislocationTheoryPackage) : Prop :=
  D.burgersVector ∧ D.slipSystem ∧ D.peierlsStress ∧ D.frankReadSource ∧ D.dislocationDensity

theorem dislocation_theory_closed_from_evidence (D : DislocationTheoryPackage) (E : DislocationTheoryEvidence D) :
    DislocationTheoryClosed D := by
  exact And.intro E.burgersVectorClosed
    (And.intro E.slipSystemClosed
      (And.intro E.peierlsStressClosed
        (And.intro E.frankReadSourceClosed E.dislocationDensityClosed)))

end MaterialsEngineeringMechanicalBehaviorLemmaCanonicalLaneLean
end HautevilleHouse