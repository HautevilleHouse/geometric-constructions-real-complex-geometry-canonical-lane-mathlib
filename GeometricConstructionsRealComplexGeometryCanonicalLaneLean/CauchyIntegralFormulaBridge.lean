import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricConstructionsRealComplexGeometryCanonicalLaneLean

structure CauchyIntegralFormulaPackage where
  domain : Type u
  topology : TopologicalSpace domain
  complexStructure : Prop
  contour : Type v
  integrandHolomorphic : Prop
  cauchyFormulaHolds : Prop

structure CauchyIntegralFormulaEvidence (C : CauchyIntegralFormulaPackage) where
  complexStructureClosed : C.complexStructure
  contourClosed : Nonempty C.contour
  integrandHolomorphicClosed : C.integrandHolomorphic
  cauchyFormulaHoldsClosed : C.cauchyFormulaHolds

def CauchyIntegralFormulaClosed (C : CauchyIntegralFormulaPackage) : Prop :=
  C.complexStructure ∧ Nonempty C.contour ∧ C.integrandHolomorphic ∧ C.cauchyFormulaHolds

theorem cauchy_integral_formula_closed_from_evidence (C : CauchyIntegralFormulaPackage)
    (E : CauchyIntegralFormulaEvidence C) : CauchyIntegralFormulaClosed C := by
  exact And.intro E.complexStructureClosed
    (And.intro E.contourClosed
      (And.intro E.integrandHolomorphicClosed E.cauchyFormulaHoldsClosed))

end GeometricConstructionsRealComplexGeometryCanonicalLaneLean
end HautevilleHouse
