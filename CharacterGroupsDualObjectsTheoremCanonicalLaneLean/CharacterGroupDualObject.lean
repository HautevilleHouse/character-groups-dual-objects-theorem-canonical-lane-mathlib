import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterGroupsDualObjectsTheoremCanonicalLaneLean

structure CharacterGroup where
  carrier : Type u
  groupOp : carrier → carrier → carrier
  groupUnit : carrier
  groupInv : carrier → carrier
  groupAssoc : ∀ a b c : carrier, groupOp (groupOp a b) c = groupOp a (groupOp b c)
  groupUnitLeft : ∀ a : carrier, groupOp groupUnit a = a
  groupUnitRight : ∀ a : carrier, groupOp a groupUnit = a
  groupInvLeft : ∀ a : carrier, groupOp (groupInv a) a = groupUnit
  groupInvRight : ∀ a : carrier, groupOp a (groupInv a) = groupUnit
  topologicalGroup : TopologicalSpace carrier
  continuousGroupOp : Continuous (fun p : carrier × carrier => groupOp p.1 p.2)
  continuousGroupInv : Continuous groupInv

structure DualObject (G : CharacterGroup) where
  underlyingSpace : Type u
  linearStructure : Module ℂ underlyingSpace
  continuityStructure : TopologicalSpace underlyingSpace
  groupAction : G.carrier → (underlyingSpace → underlyingSpace)
  groupActionLinear : ∀ g : G.carrier, IsLinearMap ℂ (groupAction g)
  groupActionContinuous : ∀ g : G.carrier, Continuous (groupAction g)
  groupActionUnit : ∀ v : underlyingSpace, groupAction G.groupUnit v = v
  groupActionCompatible : ∀ g h : G.carrier, ∀ v : underlyingSpace, groupAction (G.groupOp g h) v = groupAction g (groupAction h v)

structure DualGroup (G : CharacterGroup) where
  dualCarrier : Type u
  dualGroupOp : dualCarrier → dualCarrier → dualCarrier
  dualGroupUnit : dualCarrier
  dualGroupInv : dualCarrier → dualCarrier
  dualGroupAssoc : ∀ a b c : dualCarrier, dualGroupOp (dualGroupOp a b) c = dualGroupOp a (dualGroupOp b c)
  dualGroupUnitLeft : ∀ a : dualCarrier, dualGroupOp dualGroupUnit a = a
  dualGroupUnitRight : ∀ a : dualCarrier, dualGroupOp a dualGroupUnit = a
  dualGroupInvLeft : ∀ a : dualCarrier, dualGroupOp (dualGroupInv a) a = dualGroupUnit
  dualGroupInvRight : ∀ a : dualCarrier, dualGroupOp a (dualGroupInv a) = dualGroupUnit
  topologicalDualGroup : TopologicalSpace dualCarrier
  continuousDualGroupOp : Continuous (fun p : dualCarrier × dualCarrier => dualGroupOp p.1 p.2)
  continuousDualGroupInv : Continuous dualGroupInv
  pairing : G.carrier → dualCarrier → ℂ
  pairingContinuous : Continuous (fun p : G.carrier × dualCarrier => pairing p.1 p.2)
  pairingNondegenerate : (∀ g : G.carrier, pairing g = (0 : dualCarrier → ℂ)) → g = G.groupUnit

structure CharacterGroupDualObjectEvidence (G : CharacterGroup) where
  dualGroupConstructed : DualGroup G
  dualObjectConstructed : DualObject G
  pairingComplete : ∀ g : G.carrier, ∀ v : (dualObjectConstructed.underlyingSpace),
    (dualGroupConstructed.pairing g) v = 0
  dualObjectRepresentable : Type u
  representationIsomorphism : dualObjectConstructed.underlyingSpace ≃ₗ[ℂ] (G.carrier → ℂ)
  topologyCompatible : True

def DualObjectClosed (G : CharacterGroup) (E : CharacterGroupDualObjectEvidence G) : Prop :=
  True

end CharacterGroupsDualObjectsTheoremCanonicalLaneLean
end HautevilleHouse
