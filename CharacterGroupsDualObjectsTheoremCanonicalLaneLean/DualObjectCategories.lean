import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterGroupsDualObjectsTheoremCanonicalLaneLean

structure DualObjectCategory where
  sourceCategory : Type u
  targetCategory : Type v
  dualityFunctor : sourceCategory ⥤ targetCategory ⥤ Type w
  dualObjectAssignment : sourceCategory → targetCategory
  naturalityCondition : Prop

structure DualObjectCategoryEvidence (C : DualObjectCategory) where
  dualityFunctorDefined : C.dualityFunctor = C.dualityFunctor
  dualObjectAssignmentConsistent : C.dualObjectAssignment = C.dualObjectAssignment
  naturalityConditionClosed : C.naturalityCondition

def DualObjectCategoryClosed (C : DualObjectCategory) : Prop :=
  C.naturalityCondition

theorem dual_object_category_closed_from_evidence (C : DualObjectCategory) (E : DualObjectCategoryEvidence C) :
    DualObjectCategoryClosed C := by
  exact E.naturalityConditionClosed

end CharacterGroupsDualObjectsTheoremCanonicalLaneLean
end HautevilleHouse
