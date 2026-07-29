import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterGroupsDualObjectsTheoremCanonicalLaneLean

structure SpectralDualityPackage where
  cstarAlgebra : Type u
  spectrumSpace : Type v
  spectrumTopology : TopologicalSpace spectrumSpace
  gelfandTransform : cstarAlgebra → (spectrumSpace → ℂ)
  isIsometricStarHomomorphism : Prop
  isIsometricStarHomomorphismTerm : isIsometricStarHomomorphism

structure SpectralDualityEvidence (P : SpectralDualityPackage) where
  isIsometricStarHomomorphismClosed : P.isIsometricStarHomomorphism
  spectrumCompactHausdorff : P.spectrumTopology = TopologicalSpace.CompactHausdorff

def SpectralDualityClosed (P : SpectralDualityPackage) : Prop :=
  P.isIsometricStarHomomorphism

theorem spectral_duality_closed_from_evidence (P : SpectralDualityPackage) (E : SpectralDualityEvidence P) : SpectralDualityClosed P := by
  exact E.isIsometricStarHomomorphismClosed

end CharacterGroupsDualObjectsTheoremCanonicalLaneLean
end HautevilleHouse