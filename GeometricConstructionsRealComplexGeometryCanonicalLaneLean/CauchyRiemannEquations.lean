import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricConstructionsRealComplexGeometryCanonicalLaneLean

structure HolomorphicFunction where
  domain : Set ℂ
  f : ℂ → ℂ
  isComplexDifferentiable : Prop

def CauchyRiemann (u v : ℝ² → ℝ) : Prop := ∂u/∂x = ∂v/∂y ∧ ∂u/∂y = -∂v/∂x

theorem holomorphic_implies_cauchy_riemann (h : HolomorphicFunction) : ∀ z ∈ h.domain, CauchyRiemann (λ (x,y) => (h.f (x + I*y)).re) (λ (x,y) => (h.f (x + I*y)).im) := by
  sorry

end GeometricConstructionsRealComplexGeometryCanonicalLaneLean
end HautevilleHouse