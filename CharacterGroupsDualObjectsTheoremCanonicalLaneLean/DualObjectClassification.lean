import CharacterGroupsDualObjectsCanonicalLaneLean.PontryaginDuality

namespace HautevilleHouse
namespace CharacterGroupsDualObjectsCanonicalLaneLean

structure DualObjectClassificationPackage {G : CharacterGroupTopologyPackage}
    {L : LocalCompactnessPackage G} {P : PontryaginDualityPackage L} where
  dualOfDualIsOriginal : Prop
  selfDualGroupsClassified : Prop
  compactDualOfDiscrete : Prop
  discreteDualOfCompact : Prop

structure DualObjectClassificationEvidence {G : CharacterGroupTopologyPackage}
    {L : LocalCompactnessPackage G} {P : PontryaginDualityPackage L}
    (D : DualObjectClassificationPackage P) where
  dualOfDualIsOriginalClosed : D.dualOfDualIsOriginal
  selfDualGroupsClassifiedClosed : D.selfDualGroupsClassified
  compactDualOfDiscreteClosed : D.compactDualOfDiscrete
  discreteDualOfCompactClosed : D.discreteDualOfCompact

def DualObjectClassificationClosed {G : CharacterGroupTopologyPackage}
    {L : LocalCompactnessPackage G} {P : PontryaginDualityPackage L}
    (D : DualObjectClassificationPackage P) : Prop :=
  D.dualOfDualIsOriginal ∧ D.selfDualGroupsClassified ∧
  D.compactDualOfDiscrete ∧ D.discreteDualOfCompact

theorem dual_object_classification_closed_from_evidence
    {G : CharacterGroupTopologyPackage} {L : LocalCompactnessPackage G}
    {P : PontryaginDualityPackage L} (D : DualObjectClassificationPackage P)
    (E : DualObjectClassificationEvidence D) : DualObjectClassificationClosed D := by
  exact And.intro E.dualOfDualIsOriginalClosed
    (And.intro E.selfDualGroupsClassifiedClosed
      (And.intro E.compactDualOfDiscreteClosed E.discreteDualOfCompactClosed))

end CharacterGroupsDualObjectsCanonicalLaneLean
end HautevilleHouse