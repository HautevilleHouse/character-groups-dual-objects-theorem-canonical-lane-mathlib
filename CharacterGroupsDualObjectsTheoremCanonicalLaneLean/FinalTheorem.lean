import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterGroupsDualObjectsTheoremCanonicalLaneLean

def ConstrainedCharacterGroupDualObjectClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem character_group_dual_object_endgame (A : AdmissibleClass) : ConstrainedCharacterGroupDualObjectClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CharacterGroupsDualObjectsTheoremCanonicalLaneLean
end HautevilleHouse
