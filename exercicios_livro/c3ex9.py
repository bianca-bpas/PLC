def compressShift(F: int, k: float) -> float:
    return F/k

def elasticPotentialEnergy(F: int, k: float) -> float:
        return 0.5 * k * (compressShift(F, k)**2)