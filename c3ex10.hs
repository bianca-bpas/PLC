costElectricEnergy :: Float -> Float -> Float
costElectricEnergy salario consumo = 
    gasto - discount 15
    where 
        gasto = (1/5)*salario *consumo
        discount percentage = (percentage/100)*gasto