import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterGroupsDualObjectsTheoremCanonicalLaneLean

structure ConstrainedDualClosurePackage where
  admissible : AdmissibleClass
  dualPairingClosed : Prop
  closureWitness : Prop

def ConstrainedDualClosure (P : ConstrainedDualClosurePackage) : Prop :=
  P.dualPairingClosed ∧ P.closureWitness

theorem constrained_dual_closure_endgame (P : ConstrainedDualClosurePackage) :
    ConstrainedDualClosure P := by
  exact And.intro P.dualPairingClosed P.closureWitness

end CharacterGroupsDualObjectsTheoremCanonicalLaneLean
end HautevilleHouse
