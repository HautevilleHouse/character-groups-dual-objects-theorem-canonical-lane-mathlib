import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterGroupsDualObjectsTheoremCanonicalLaneLean

structure CharacterGroupTrace where
  group : Type u
  character : Type v
  traceMap : group → character → ℝ
  nondegenerate : Prop
  invarianceCondition : Prop

structure CharacterGroupTraceEvidence (T : CharacterGroupTrace) where
  traceMapDefined : T.traceMap = T.traceMap
  nondegenerateClosed : T.nondegenerate
  invarianceConditionClosed : T.invarianceCondition

def CharacterGroupTraceClosed (T : CharacterGroupTrace) : Prop :=
  T.nondegenerate ∧ T.invarianceCondition

theorem character_group_trace_closed_from_evidence (T : CharacterGroupTrace) (E : CharacterGroupTraceEvidence T) :
    CharacterGroupTraceClosed T := by
  exact And.intro E.nondegenerateClosed E.invarianceConditionClosed

end CharacterGroupsDualObjectsTheoremCanonicalLaneLean
end HautevilleHouse
