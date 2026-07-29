import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricConstructionsRealComplexGeometryCanonicalLaneLean

structure MobiusTransformation where
  a : ℂ
  b : ℂ
  c : ℂ
  d : ℂ
  ad_minus_bc_ne_zero : a*d - b*c ≠ 0

def apply (M : MobiusTransformation) (z : ℂ) : ℂ := (M.a*z + M.b) / (M.c*z + M.d)

theorem mobius_composition_is_mobius (M N : MobiusTransformation) : ∃ (P : MobiusTransformation), ∀ (z : ℂ), apply M (apply N z) = apply P z := by
  sorry

end GeometricConstructionsRealComplexGeometryCanonicalLaneLean
end HautevilleHouse