import canonicalLaneMathlib.AdmissibleClass
import CharacterGroupsDualObjectsTheoremCanonicalLaneLean.DualObjectStructure

namespace HautevilleHouse
namespace CharacterGroupsDualObjectsTheoremCanonicalLaneLean

structure MackeyTheory (G : Type) [CommGroup G] [TopologicalSpace G] where
  dualPairs : Set (DualObject G × DualObject G)
  imprimitivityTheorem : Prop
  moritaEquivalence : Prop

def MackeyTheoryClosed (M : MackeyTheory ℤ) : Prop := M.imprimitivityTheorem ∧ M.moritaEquivalence

end CharacterGroupsDualObjectsTheoremCanonicalLaneLean
end HautevilleHouse
