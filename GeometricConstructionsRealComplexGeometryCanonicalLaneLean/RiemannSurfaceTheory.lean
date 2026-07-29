import canonicalLaneMathlib.AdmissibleClass
import ComplexOfGeometricObjects

namespace HautevilleHouse
namespace GeometricConstructionsRealComplexGeometryCanonicalLaneLean

structure RiemannSurfacePackage (G : GeometricObjectPackage) where
  complexStructureCompatible : G.complexProjectiveSpace.complexStructure
  holomorphicAtlas : Prop
  transitionMapsHolomorphic : Prop
  genusWellDefined : Prop
  abelianDifferentials : Prop
  jacobianVariety : Prop

structure RiemannSurfaceEvidence {G : GeometricObjectPackage} (R : RiemannSurfacePackage G) where
  complexStructureCompatibleClosed : R.complexStructureCompatible
  holomorphicAtlasClosed : R.holomorphicAtlas
  transitionMapsHolomorphicClosed : R.transitionMapsHolomorphic
  genusWellDefinedClosed : R.genusWellDefined
  abelianDifferentialsClosed : R.abelianDifferentials
  jacobianVarietyClosed : R.jacobianVariety

def RiemannSurfaceClosed {G : GeometricObjectPackage} (R : RiemannSurfacePackage G) : Prop :=
  R.complexStructureCompatible ∧ R.holomorphicAtlas ∧
  R.transitionMapsHolomorphic ∧ R.genusWellDefined ∧
  R.abelianDifferentials ∧ R.jacobianVariety

theorem riemann_surface_closed_from_evidence {G : GeometricObjectPackage} (R : RiemannSurfacePackage G)
    (E : RiemannSurfaceEvidence R) : RiemannSurfaceClosed R := by
  exact And.intro E.complexStructureCompatibleClosed
    (And.intro E.holomorphicAtlasClosed
      (And.intro E.transitionMapsHolomorphicClosed
        (And.intro E.genusWellDefinedClosed
          (And.intro E.abelianDifferentialsClosed E.jacobianVarietyClosed))))

end GeometricConstructionsRealComplexGeometryCanonicalLaneLean
end HautevilleHouse