import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMechanicalBehaviorLemmaCanonicalLaneLean

structure CrystallographyPackage where
  latticeType : Type u
  bravaisLattice : Prop
  unitCellVectors : Type v
  symmetryGroup : Type w
  millerIndices : Nat × Nat × Nat
  crystalSystem : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  latticeTypeDefined : C.latticeType
  bravaisLatticeClosed : C.bravaisLattice
  unitCellVectorsClosed : C.unitCellVectors
  symmetryGroupClosed : C.symmetryGroup
  crystalSystemClosed : C.crystalSystem

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.latticeType ∧ C.bravaisLattice ∧ C.unitCellVectors ∧ C.symmetryGroup ∧ C.crystalSystem

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) : CrystallographyClosed C :=
  And.intro E.latticeTypeDefined (And.intro E.bravaisLatticeClosed (And.intro E.unitCellVectorsClosed (And.intro E.symmetryGroupClosed E.crystalSystemClosed)))

end MaterialsEngineeringMechanicalBehaviorLemmaCanonicalLaneLean
end HautevilleHouse