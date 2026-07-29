import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricConstructionsRealComplexGeometryCanonicalLaneLean

structure CauchyPackage where
  holomorphicFunction : Type u
  domain : Type v
  contourIntegral : Type w
  cauchyIntegralFormula : Prop
  powerSeriesExpansion : Prop
  analyticity : Prop

structure CauchyEvidence (C : CauchyPackage) where
  cauchyIntegralFormulaClosed : C.cauchyIntegralFormula
  powerSeriesExpansionClosed : C.powerSeriesExpansion
  analyticityClosed : C.analyticity

def CauchyClosed (C : CauchyPackage) : Prop := C.cauchyIntegralFormula ∧ C.powerSeriesExpansion ∧ C.analyticity

theorem cauchy_closed_from_evidence (C : CauchyPackage) (E : CauchyEvidence C) : CauchyClosed C := by
  exact And.intro E.cauchyIntegralFormulaClosed (And.intro E.powerSeriesExpansionClosed E.analyticityClosed)

end GeometricConstructionsRealComplexGeometryCanonicalLaneLean
end HautevilleHouse