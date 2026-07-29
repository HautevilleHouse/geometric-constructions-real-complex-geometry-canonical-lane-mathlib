import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricConstructionsRealComplexGeometryCanonicalLaneLean

structure HolomorphicFunctionPackage where
  domain : Type u
  topology : TopologicalSpace domain
  complexStructure : ComplexStructure? domain
  holomorphicFunctions : Set (domain → ℂ)
  cauchyIntegralFormulaHolds : Prop
  powerSeriesExpansion : Prop
  identityTheorem : Prop
  openMappingProperty : Prop
  maximumModulusPrinciple : Prop
  cauchyIntegralFormulaTerm : cauchyIntegralFormulaHolds
  powerSeriesExpansionTerm : powerSeriesExpansion
  identityTheoremTerm : identityTheorem
  openMappingPropertyTerm : openMappingProperty
  maximumModulusPrincipleTerm : maximumModulusPrinciple

structure HolomorphicFunctionEvidence (H : HolomorphicFunctionPackage) where
  cauchyIntegralFormulaClosed : H.cauchyIntegralFormulaHolds
  powerSeriesExpansionClosed : H.powerSeriesExpansion
  identityTheoremClosed : H.identityTheorem
  openMappingPropertyClosed : H.openMappingProperty
  maximumModulusPrincipleClosed : H.maximumModulusPrinciple

def HolomorphicFunctionClosed (H : HolomorphicFunctionPackage) : Prop :=
  H.cauchyIntegralFormulaHolds ∧ H.powerSeriesExpansion ∧
  H.identityTheorem ∧ H.openMappingProperty ∧ H.maximumModulusPrinciple

theorem holomorphicFunction_closed_from_evidence (H : HolomorphicFunctionPackage) (E : HolomorphicFunctionEvidence H) :
    HolomorphicFunctionClosed H := by
  exact And.intro E.cauchyIntegralFormulaClosed
    (And.intro E.powerSeriesExpansionClosed
      (And.intro E.identityTheoremClosed
        (And.intro E.openMappingPropertyClosed E.maximumModulusPrincipleClosed)))

end GeometricConstructionsRealComplexGeometryCanonicalLaneLean
end HautevilleHouse