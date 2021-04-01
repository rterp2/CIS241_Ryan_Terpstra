
BEGIN{ 
	FS = ","
	numrows = 800

}
#finding total highest power
mostPower<$5 {mostPower = $5+0; name = $2;next}
mostPower==$5{name = name ORS $2}

#finding total of each column
{totalSum += $5}
{hpSum +=$6}
{attSum += $7}
{defSum += $8}
{spAttSum += $9}
{spDefSum += $10}
{speSum += $11}

#finding most powerful of each type
/Grass/ && mostPowerGrass<$5 {mostPowerGrass = $5 + 0; nameGrass = $2;next}
/Grass/ && mostPowerGrass==$5 {nameGrass = nameGrass ORS $2}
/Poison/ && mostPowerPoison<$5 {mostPowerPoison = $5+0; namePoison = $2;next}
/Poison/ && mostPowerPoison==$5 {namePoison = namePoison ORS $2}
/Fire/ && mostPowerFire<$5 {mostPowerFire = $5+0; nameFire = $2;next}
/Fire/ && mostPowerFire==$5 {nameFire = nameFire ORS $2}
/Flying/ && mostPowerFlying<$5 {mostPowerFlying = $5+0; nameFlying = $2;next}
/Flying/ && mostPowerFlying==$5 {nameFlying = nameFlying ORS $2}
/Dragon/ && mostPowerDragon<$5 {mostPowerDragon = $5+0; nameDragon = $2;next}
/Dragon/ && mostPowerDragon==$5 {nameDragon = nameDragon ORS $2}
/Water/ && mostPowerWater<$5 {mostPowerWater = $5+0; nameWater = $2;next}
/Water/ && mostPowerWater==$5 {nameWater = nameWater ORS $2}
/Bug/ && mostPowerBug<$5 {mostPowerBug = $5+0; nameBug = $2;next}
/Bug/ && mostPowerBug==$5 {nameBug = nameBug ORS $2}
/Normal/ && mostPowerNormal<$5 {mostPowerNormal = $5+0; nameNormal = $2;next}
/Normal/ && mostPowerNormal==$5 {nameNormal = nameNormal ORS $2}
/Electric/ && mostPowerElectric<$5 {mostPowerElectric = $5+0; nameElectric = $2;next}
/Electric/ && mostPowerElectric==$5 {nameElectric = nameElectric ORS $2}
/Ground/ && mostPowerGround<$5 {mostPowerGround = $5+0; nameGround = $2;next}
/Ground/ && mostPowerGround==$5 {nameGround = nameGround ORS $2}
/Fairy/ && mostPowerFairy<$5 {mostPowerFairy = $5+0; nameFairy = $2;next}
/Fairy/ && mostPowerFairy==$5 {nameFairy = nameFairy ORS $2}
/Fighting/ && mostPowerFighting<$5 {mostPowerFighting = $5+0; nameFighting = $2;next}
/Fighting/ && mostPowerFighting==$5 {nameFighting = nameFighting ORS $2}
/Psychic/ && mostPowerPsychic<$5 {mostPowerPsychic = $5+0; namePsychic = $2;next}
/Psychic/ && mostPowerPsychic==$5 {namePsychic = namePsychic ORS $2}
/Steel/ && mostPowerSteel<$5 {mostPowerSteel = $5+0; nameSteel = $2;next}
/Steel/ && mostPowerSteel==$5 {nameSteel = nameSteel ORS $2}
/Rock/ && mostPowerRock<$5 {mostPowerRock = $5+0; nameRock = $2;next}
/Rock/ && mostPowerRock==$5 {nameRock = nameRock ORS $2}
/Ice/ && mostPowerIce<$5 {mostPowerIce = $5+0; nameIce = $2;next}
/Ice/ && mostPowerIce==$5 {nameIce = nameIce ORS $2}
/Dark/ && mostPowerDark<$5 {mostPowerDark = $5+0; nameDark = $2;next}
/Dark/ && mostPowerDark==$5 {nameDark = nameDark ORS $2}

#average stats of pokemon of each type
/Grass/ {numGrass += 1}
/Grass/ {totalSumGrass += $5}
/Poison/ {numPoison +=1}
/Poison/ {totalSumPoison += $5}
/Fire/ {numFire += 1}
/Fire/ {totalSumFire += $5}
/Flying/ {numFlying += 1}
/Flying/ {totalSumFlying += $5}
/Dragon/ {numDragon +=1}
/Dragon/ {totalSumDragon += $5}
/Water/ {numWater +=1}
/Water/ {totalSumWater += $5}
/Bug/ {numBug +=1}
/Bug/ {totalSumBug += $5}
/Normal/ {numNormal +=1}
/Normal/ {totalSumNormal += $5}
/Electric/ {numElectric += 1}
/Electric/ {totalSumElectric += $5}
/Ground/ {numGround += 1}
/Ground/ {totalSumGround += $5}
/Fairy/ {numFairy += 1}
/Fairy/ {totalSumFairy += $5}
/Fighting/ {numFighting +=1}
/Fighting/ {totalSumFighting += $5}
/Psychic/ {numPsychic +=1}
/Psychic/ {totalSumPsychic += $5}
/Steel/ {numSteel +=1}
/Steel/ {totalSumSteel += $5}
/Rock/ {numRock +=1}
/Rock/ {totalSumRock += $5}
/Ice/ {numIce +=1}
/Ice/ {totalSumIce += $5}
/Dark/ {numDark += 1}
/Dark/ {totalSumDark += $5}


END {
	print "the pokemon with the highest power are as follows:\n" name
	print "these pokemon have a power of " mostPower "\n\n"
	print "the average of the columns are as follows:\ntotal: "totalSum/numrows
	print "hp: "hpSum/numrows
	print "attack: " attSum/numrows
	print "defense: " defSum/numrows
	print "sp.atk: " spAttSum/numrows
	print "sp.def: " spDefSum/numrows
	print "speed: " speSum/numrows "\n\n"
	print "the grass pokemon with the highest power are as follows:\n" nameGrass " with " mostPowerGrass "\n"
	print "the poison pokemon with the highest power are as follows:\n" namePoison " with " mostPowerPoison "\n"
	print "the fire pokemon with the highest power are as follows:\n" nameFire " with " mostPowerFire "\n"
	print "the flying pokemon with the highest power are as follows:\n" nameFlying " with " mostPowerFlying "\n"
	print "the dragon pokemon with the highest power are as follows:\n" nameDragon " with " mostPowerDragon "\n"
	print "the water pokemon with the highest power are as follows:\n" nameWater " with " mostPowerWater "\n"
	print "the bug pokemon with the highest power are as follows:\n" nameBug " with " mostPowerBug "\n"
	print "the normal pokemon with the highest power are as follows:\n" nameNormal " with " mostPowerNormal "\n"
	print "the electric pokemon with the highest power are as follows:\n" nameElectric " with " mostPowerElectric "\n"
	print "the ground pokemon with the highest power are as follows:\n" nameGround " with " mostPowerGround "\n"
	print "the fairy pokemon with the highest power are as follows:\n" nameFairy " with " mostPowerFairy "\n"
	print "the fighting pokemon with the highest power are as follows:\n" nameFighting " with " mostPowerFighting "\n"
	print "the psychic pokemon with the highest power are as follows:\n" namePsychic " with " mostPowerPsychic "\n"
	print "the steel pokemon with the highest power are as follows:\n" nameSteel " with " mostPowerSteel "\n"
	print "the rock pokemon with the highest power are as follows:\n" nameRock " with " mostPowerRock "\n"
	print "the ice pokemon with the highest power are as follows:\n" nameIce " with " mostPowerIce "\n"
	print "the Dark pokemon with the highest power are as follows:\n" nameDark " with " mostPowerDark "\n"

	print "the average power of all grass pokemon is " totalSumGrass/numGrass
	print "the average power of all poison pokemon is "totalSumPoison/numPoison
	print "the average power of all fire pokemon is "totalSumFire/numFire
	print "the average power of all flying pokemon is "totalSumFlying/numFlying
	print "the average power of all dragon pokemon is "totalSumDragon/numDragon
	print "the average power of all water pokemon is "totalSumWater/numWater
	print "the average power of all bug pokemon is "totalSumBug/numBug
	print "the average power of all normal pokemon is " totalSumNormal/numNormal
	print "the average power of all electric pokemon is "totalSumElectric/numElectric
	print "the average power of all ground pokemon is "totalSumGround/numGround
	print "the average power of all fairy pokemon is "totalSumFairy/numFairy
	print "the average power of all fighting pokemon is "totalSumFighting/numFighting
	print "the average power of all psychic pokemon is "totalSumPsychic/numPsychic
	print "the average power of all steel pokemon is "totalSumSteel/numSteel
	print "the average power of all Rock pokemon is "totalSumRock/numRock
	print "the average power of all Ice pokemon is "totalSumIce/numIce
	print "the average power of all Dark pokemon is "totalSumDark/numDark
}
