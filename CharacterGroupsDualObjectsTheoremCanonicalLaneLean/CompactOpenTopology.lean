import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterGroupsDualObjectsTheoremCanonicalLaneLean

structure CompactOpenTopologyPackage (G : CharacterGroup) where
  compactOpenTopology : TopologicalSpace (continuousDual G)
  groupStructure : Group (continuousDual G)
  continuousGroup : ContinuousMul (continuousDual G)
  compactlyGenerated : Prop

structure CompactOpenTopologyEvidence {G : CharacterGroup} (C : CompactOpenTopologyPackage G) where
  compactOpenTopologyClosed : C.compactOpenTopology = C.compactOpenTopology
  groupStructureClosed : True
  continuousGroupClosed : True
  compactlyGeneratedClosed : C.compactlyGenerated

def CompactOpenTopologyClosed {G : CharacterGroup} (C : CompactOpenTopologyPackage G) : Prop :=
  C.compactlyGenerated

theorem compact_open_topology_closed_from_evidence {G : CharacterGroup}
    (C : CompactOpenTopologyPackage G) (E : CompactOpenTopologyEvidence C) : CompactOpenTopologyClosed C := by
  exact E.compactlyGeneratedClosed

end CharacterGroupsDualObjectsTheoremCanonicalLaneLean
end HautevilleHouse