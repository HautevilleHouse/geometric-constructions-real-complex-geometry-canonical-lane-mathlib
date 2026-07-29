import canonicalLaneMathlib.AdmissibleClass
import GeometricConstructionsRealComplexGeometryCanonicalLaneLean.HolomorphicFunctionTheory

namespace HautevilleHouse
namespace GeometricConstructionsRealComplexGeometryCanonicalLaneLean

structure ValueDistributionPackage {H : HolomorphicFunctionPackage} where
  entireFunctionGrowth : Prop
  littlePicardTheorem : Prop
  bigPicardTheorem : Prop
  defectRelation : Prop
  nevanlinnaCharacteristic : Prop
  entireFunctionGrowthTerm : entireFunctionGrowth
  littlePicardTheoremTerm : littlePicardTheorem
  bigPicardTheoremTerm : bigPicardTheorem
  defectRelationTerm : defectRelation
  nevanlinnaCharacteristicTerm : nevanlinnaCharacteristic

structure ValueDistributionEvidence {H : HolomorphicFunctionPackage} (V : ValueDistributionPackage H) where
  entireFunctionGrowthClosed : V.entireFunctionGrowth
  littlePicardTheoremClosed : V.littlePicardTheorem
  bigPicardTheoremClosed : V.bigPicardTheorem
  defectRelationClosed : V.defectRelation
  nevanlinnaCharacteristicClosed : V.nevanlinnaCharacteristic

def ValueDistributionClosed {H : HolomorphicFunctionPackage} (V : ValueDistributionPackage H) : Prop :=
  V.entireFunctionGrowth ∧ V.littlePicardTheorem ∧ V.bigPicardTheorem ∧
  V.defectRelation ∧ V.nevanlinnaCharacteristic

theorem valueDistribution_closed_from_evidence {H : HolomorphicFunctionPackage} (V : ValueDistributionPackage H) (E : ValueDistributionEvidence V) :
    ValueDistributionClosed V := by
  exact And.intro E.entireFunctionGrowthClosed
    (And.intro E.littlePicardTheoremClosed
      (And.intro E.bigPicardTheoremClosed
        (And.intro E.defectRelationClosed E.nevanlinnaCharacteristicClosed)))

end GeometricConstructionsRealComplexGeometryCanonicalLaneLean
end HautevilleHouse