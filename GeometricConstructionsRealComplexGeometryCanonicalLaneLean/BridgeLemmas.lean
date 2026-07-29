import canonicalLaneMathlib.AdmissibleClass
import GeometricConstructionsRealComplexGeometryCanonicalLaneLean.ComplexGeometryAdmissibleClass

namespace HautevilleHouse
namespace GeometricConstructionsRealComplexGeometryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop := complexGeometryWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end GeometricConstructionsRealComplexGeometryCanonicalLaneLean
end HautevilleHouse