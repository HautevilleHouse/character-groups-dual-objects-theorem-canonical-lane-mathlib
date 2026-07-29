import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterGroupsDualObjectsTheoremCanonicalLaneLean

structure DualGroupFunctorPackage where
  sourceGroup : Type u
  sourceGroupTopology : TopologicalSpace sourceGroup
  sourceGroupIsHausdorff : Prop
  sourceGroupIsCompact : Prop
  sourceGroupIsAbelian : Prop
  dualGroup : Type v
  dualGroupTopology : TopologicalSpace dualGroup
  dualGroupIsLocallyCompact : Prop
  continuousCharacters : Type w
  dualityPairing : continuousCharacters → sourceGroup → dualGroup
  functorialAction : (sourceGroup → sourceGroup) → (dualGroup → dualGroup)
  sourceGroupIsHausdorffTerm : sourceGroupIsHausdorff
  sourceGroupIsCompactTerm : sourceGroupIsCompact
  sourceGroupIsAbelianTerm : sourceGroupIsAbelian
  dualGroupIsLocallyCompactTerm : dualGroupIsLocallyCompact

structure DualGroupFunctorEvidence (P : DualGroupFunctorPackage) where
  sourceGroupIsHausdorffClosed : P.sourceGroupIsHausdorff
  sourceGroupIsCompactClosed : P.sourceGroupIsCompact
  sourceGroupIsAbelianClosed : P.sourceGroupIsAbelian
  dualGroupIsLocallyCompactClosed : P.dualGroupIsLocallyCompact
  functorialActionConsistent : ∀ (f : P.sourceGroup → P.sourceGroup), P.functorialAction f ∘ P.dualityPairing = P.dualityPairing ∘ f

def DualGroupFunctorClosed (P : DualGroupFunctorPackage) : Prop :=
  P.sourceGroupIsHausdorff ∧ P.sourceGroupIsCompact ∧ P.sourceGroupIsAbelian ∧ P.dualGroupIsLocallyCompact

theorem dual_group_functor_closed_from_evidence (P : DualGroupFunctorPackage) (E : DualGroupFunctorEvidence P) : DualGroupFunctorClosed P := by
  exact And.intro E.sourceGroupIsHausdorffClosed (And.intro E.sourceGroupIsCompactClosed (And.intro E.sourceGroupIsAbelianClosed E.dualGroupIsLocallyCompactClosed))

end CharacterGroupsDualObjectsTheoremCanonicalLaneLean
end HautevilleHouse