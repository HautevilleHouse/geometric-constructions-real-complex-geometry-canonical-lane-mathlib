import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricConstructionsRealComplexGeometryCanonicalLaneLean

structure ConstructibleNumber where
  real : ℝ
  imaginary : ℝ
  isConstructible : Prop

def constructibleField : Set ℂ := {z : ℂ | ∃ (c : ConstructibleNumber), (c.real = z.re) ∧ (c.imaginary = z.im) ∧ c.isConstructible}

theorem constructible_field_closed_under_addition : ∀ (a b : ℂ), a ∈ constructibleField → b ∈ constructibleField → (a + b) ∈ constructibleField := by
  intro a b ha hb
  sorry

end GeometricConstructionsRealComplexGeometryCanonicalLaneLean
end HautevilleHouse