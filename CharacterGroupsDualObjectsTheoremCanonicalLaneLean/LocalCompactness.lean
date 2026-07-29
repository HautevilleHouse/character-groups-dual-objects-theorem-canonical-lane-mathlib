import CharacterGroupsDualObjectsCanonicalLaneLean.CharacterGroupTopology

namespace HautevilleHouse
namespace CharacterGroupsDualObjectsCanonicalLaneLean

structure LocalCompactnessPackage {G : CharacterGroupTopologyPackage} where
  locallyCompactSpace : Prop
  hausdorffProperty : Prop
  abelianGroup : Prop
  sigmaCompactness : Prop

structure LocalCompactnessEvidence {G : CharacterGroupTopologyPackage}
    (L : LocalCompactnessPackage G) where
  locallyCompactSpaceClosed : L.locallyCompactSpace
  hausdorffPropertyClosed : L.hausdorffProperty
  abelianGroupClosed : L.abelianGroup
  sigmaCompactnessClosed : L.sigmaCompactness

def LocalCompactnessClosed {G : CharacterGroupTopologyPackage}
    (L : LocalCompactnessPackage G) : Prop :=
  L.locallyCompactSpace ∧ L.hausdorffProperty ∧ L.abelianGroup ∧ L.sigmaCompactness

theorem local_compactness_closed_from_evidence
    {G : CharacterGroupTopologyPackage} (L : LocalCompactnessPackage G)
    (E : LocalCompactnessEvidence L) : LocalCompactnessClosed L := by
  exact And.intro E.locallyCompactSpaceClosed
    (And.intro E.hausdorffPropertyClosed
      (And.intro E.abelianGroupClosed E.sigmaCompactnessClosed))

end CharacterGroupsDualObjectsCanonicalLaneLean
end HautevilleHouse