import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricConstructionsRealComplexGeometryCanonicalLaneLean

inductive ExtendedComplex where
  | finite : ℂ → ExtendedComplex
  | infinity : ExtendedComplex

def stereographicProjection (z : ℂ) : ℝ³ := (2*z.re/(1+z.re^2+z.im^2), 2*z.im/(1+z.re^2+z.im^2), (z.re^2+z.im^2-1)/(1+z.re^2+z.im^2))

theorem stereographicProjection_is_bijection : Function.Bijective (stereographicProjection : ExtendedComplex → ℝ³) := by
  sorry

end GeometricConstructionsRealComplexGeometryCanonicalLaneLean
end HautevilleHouse