import canonicalLaneMathlib.AdmissibleClass
import GeometricConstructionsRealComplexGeometryCanonicalLaneLean.HolomorphicFunctionTheory
import GeometricConstructionsRealComplexGeometryCanonicalLaneLean.RiemannMappingTheorem

namespace HautevilleHouse
namespace GeometricConstructionsRealComplexGeometryCanonicalLaneLean

structure GeometricFunctionTheoryPackage {H : HolomorphicFunctionPackage} {R : RiemannMappingPackage H} where
  univalentFunctions : Prop
  koebeDistortionTheorem : Prop
  schwarzLemma : Prop
  automorphismGroupOfUnitDisk : Prop
  deBrangesTheorem : Prop
  univalentFunctionsTerm : univalentFunctions
  koebeDistortionTheoremTerm : koebeDistortionTheorem
  schwarzLemmaTerm : schwarzLemma
  automorphismGroupOfUnitDiskTerm : automorphismGroupOfUnitDisk
  deBrangesTheoremTerm : deBrangesTheorem

structure GeometricFunctionTheoryEvidence {H : HolomorphicFunctionPackage} {R : RiemannMappingPackage H} (G : GeometricFunctionTheoryPackage H R) where
  univalentFunctionsClosed : G.univalentFunctions
  koebeDistortionTheoremClosed : G.koebeDistortionTheorem
  schwarzLemmaClosed : G.schwarzLemma
  automorphismGroupOfUnitDiskClosed : G.automorphismGroupOfUnitDisk
  deBrangesTheoremClosed : G.deBrangesTheorem

def GeometricFunctionTheoryClosed {H : HolomorphicFunctionPackage} {R : RiemannMappingPackage H} (G : GeometricFunctionTheoryPackage H R) : Prop :=
  G.univalentFunctions ∧ G.koebeDistortionTheorem ∧ G.schwarzLemma ∧
  G.automorphismGroupOfUnitDisk ∧ G.deBrangesTheorem

theorem geometricFunctionTheory_closed_from_evidence {H : HolomorphicFunctionPackage} {R : RiemannMappingPackage H} (G : GeometricFunctionTheoryPackage H R) (E : GeometricFunctionTheoryEvidence G) :
    GeometricFunctionTheoryClosed G := by
  exact And.intro E.univalentFunctionsClosed
    (And.intro E.koebeDistortionTheoremClosed
      (And.intro E.schwarzLemmaClosed
        (And.intro E.automorphismGroupOfUnitDiskClosed E.deBrangesTheoremClosed)))

end GeometricConstructionsRealComplexGeometryCanonicalLaneLean
end HautevilleHouse