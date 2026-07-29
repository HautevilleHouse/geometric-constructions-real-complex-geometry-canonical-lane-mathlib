import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricConstructionsRealComplexGeometryCanonicalLaneLean

structure RiemannSphere where
  point : Type
  charts : Type
  transitionMaps : Type
  conformalStructure : Prop

def riemannSphereClosed (R : RiemannSphere) : Prop := R.conformalStructure

end GeometricConstructionsRealComplexGeometryCanonicalLaneLean
end HautevilleHouse