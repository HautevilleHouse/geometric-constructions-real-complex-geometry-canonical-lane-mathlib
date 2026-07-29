import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricConstructionsRealComplexGeometryCanonicalLaneLean

structure ComplexGeometryAdmittedObject where
  domain : Type u
  complexStructure : Prop
  holomorphicFunctions : Prop
  conclusion : Prop

def complexGeometryWitnessClosed (O : ComplexGeometryAdmittedObject) : Prop := O.conclusion

structure AdmissibleClass where
  object : ComplexGeometryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop := complexGeometryWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GeometricConstructionsRealComplexGeometryCanonicalLaneLean
end HautevilleHouse