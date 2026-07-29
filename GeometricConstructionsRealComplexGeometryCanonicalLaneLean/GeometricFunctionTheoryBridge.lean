import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricConstructionsRealComplexGeometryCanonicalLaneLean

structure GeometricFunctionTheoryPackage where
  surface : Type u
  complexStructure : Prop
  hyperbolicMetric : Prop
  coveringSpace : Type v
  uniformizationTheorem : Prop
  boundaryRepresentation : Prop

structure GeometricFunctionTheoryEvidence (G : GeometricFunctionTheoryPackage) where
  complexStructureClosed : G.complexStructure
  hyperbolicMetricClosed : G.hyperbolicMetric
  coveringSpaceNonempty : Nonempty G.coveringSpace
  uniformizationTheoremClosed : G.uniformizationTheorem
  boundaryRepresentationClosed : G.boundaryRepresentation

def GeometricFunctionTheoryClosed (G : GeometricFunctionTheoryPackage) : Prop :=
  G.complexStructure ∧ G.hyperbolicMetric ∧ Nonempty G.coveringSpace ∧
  G.uniformizationTheorem ∧ G.boundaryRepresentation

theorem geometric_function_theory_closed_from_evidence (G : GeometricFunctionTheoryPackage)
    (E : GeometricFunctionTheoryEvidence G) : GeometricFunctionTheoryClosed G := by
  exact And.intro E.complexStructureClosed
    (And.intro E.hyperbolicMetricClosed
      (And.intro E.coveringSpaceNonempty
        (And.intro E.uniformizationTheoremClosed E.boundaryRepresentationClosed)))

end GeometricConstructionsRealComplexGeometryCanonicalLaneLean
end HautevilleHouse
