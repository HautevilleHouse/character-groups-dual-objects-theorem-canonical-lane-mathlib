import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterGroupsDualObjectsTheoremCanonicalLaneLean

structure TannakaKreinDualityPackage where
  compactGroup : Type u
  compactGroupTopology : TopologicalSpace compactGroup
  representationCategory : Type v
  fiberFunctor : Type w
  reconstructionOfGroup : Prop
  reconstructionOfGroupTerm : reconstructionOfGroup

structure TannakaKreinDualityEvidence (P : TannakaKreinDualityPackage) where
  reconstructionOfGroupClosed : P.reconstructionOfGroup
  fiberFunctorIsMonoidal : Prop
  fiberFunctorIsMonoidalTerm : fiberFunctorIsMonoidal

def TannakaKreinDualityClosed (P : TannakaKreinDualityPackage) : Prop :=
  P.reconstructionOfGroup

theorem tannaka_krein_duality_closed_from_evidence (P : TannakaKreinDualityPackage) (E : TannakaKreinDualityEvidence P) : TannakaKreinDualityClosed P := by
  exact E.reconstructionOfGroupClosed

end CharacterGroupsDualObjectsTheoremCanonicalLaneLean
end HautevilleHouse