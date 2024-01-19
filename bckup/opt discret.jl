### A Pluto.jl notebook ###
# v0.19.36

using Markdown
using InteractiveUtils

# ╔═╡ 29968f9e-1223-45ee-883a-ce6628d32b44
import Pkg; Pkg.add("JuMP")

# ╔═╡ 4597246a-0e93-477e-ae67-4173e67e6565
using Test, LinearAlgebra, PlutoUI, Plots, NCDatasets , juMP 

# ╔═╡ ffba9312-b5dd-4f3e-abaa-e70ee009bafc


# ╔═╡ fe217d2c-7353-4d14-bba4-4a2525d2ff85
myds = NCDataset("10_0_1_w.nc4","r")


# ╔═╡ a60d7a86-4768-4c3c-b351-a1a4c638afb8
myds.group["Block_0"].group["UnitBlock_0"]["ConstTerm"][:]

# ╔═╡ d50266f0-d6aa-4a5b-90c5-caddb883de44


# ╔═╡ 1142d03d-6c46-4f64-ab04-2a1fc8f7276e


# ╔═╡ 0c76d6cd-2db6-45eb-9ef2-ddd9c16784a2


# ╔═╡ 6c619a0f-01c1-4cd5-a184-52c538df468b


# ╔═╡ 5d05a088-38fe-4aa1-ad17-d4ddd5139083


# ╔═╡ 8e8dbb24-db47-409b-8c78-83af0d1db26a


# ╔═╡ 3a40a84f-29f1-4f6e-b881-956bf5b56332
blk0 = myds.group["Block_0"]

nbUnit = blk0.dim["NumberUnits"]

T = blk0.dim["TimeHorizon"]



ThUnits = [];

for ky in keys(blk0.group)

    if ( haskey(blk0.group[ky].attrib, "type") )

        if ( blk0.group[ky].attrib["type"] == "ThermalUnitBlock" )

            push!(ThUnits, ky)

        end

    end

end

# ╔═╡ fc9e1722-8ebf-4f16-91d5-10e5b9bbc4af


# ╔═╡ 1610614e-aa5d-40d2-9976-56a91667864f


# ╔═╡ 5cc461fb-34d1-4324-a21d-3e4f88905c62


# ╔═╡ ac0a9348-fd6b-4ead-8134-74c67caf4de5
netcdf \100_0_1_w {

// global attributes:
		:SMS++_file_type = 1 ;

group: Block_0 {
  dimensions:
  	TimeHorizon = 24 ;
  	NumberUnits = 100 ;
  	NumberIntervals = 1 ;
  variables:
  	double ActivePowerDemand(TimeHorizon) ;

  // group attributes:
  		:type = "UCBlock" ;
  data:

   ActivePowerDemand = 8826.33647, 8354.6596, 6817.391608, 6768.230918, 
      6889.139635, 7421.935196, 8875.497161, 10835.281332, 12654.226786, 
      13220.239029, 13286.672392, 13463.199121, 13228.211037, 12166.605907, 
      12543.947405, 12650.240786, 12595.765432, 12247.654615, 11766.677073, 
      11926.117136, 12256.955279, 11627.16701, 10570.876552, 9583.676794 ;

  group: NetworkData {
    dimensions:
    	NumberNodes = 1 ;
    } // group NetworkData

  group: UnitBlock_0 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 33 ;

     MaxPower = 125 ;

     DeltaRampUp = 39.535111 ;

     DeltaRampDown = 42.095759 ;

     QuadTerm = 0.020717 ;

     StartUpCost = 187.876647 ;

     LinearTerm = 40.159701 ;

     ConstTerm = 1337.658596 ;

     InitialPower = 0 ;

     InitUpDownTime = -5 ;

     MinUpTime = 3 ;

     MinDownTime = 4 ;
    } // group UnitBlock_0

  group: UnitBlock_1 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 46 ;

     MaxPower = 120 ;

     DeltaRampUp = 35.702027 ;

     DeltaRampDown = 24.855574 ;

     QuadTerm = 0.013543 ;

     StartUpCost = 157.329986 ;

     LinearTerm = 47.940643 ;

     ConstTerm = 1606.413611 ;

     InitialPower = 82.651084 ;

     InitUpDownTime = 4 ;

     MinUpTime = 4 ;

     MinDownTime = 4 ;
    } // group UnitBlock_1

  group: UnitBlock_2 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 37 ;

     MaxPower = 106 ;

     DeltaRampUp = 26.398546 ;

     DeltaRampDown = 23.75718 ;

     QuadTerm = 0.048993 ;

     StartUpCost = 140.463269 ;

     LinearTerm = 47.502339 ;

     ConstTerm = 1423.000475 ;

     InitialPower = 0 ;

     InitUpDownTime = -5 ;

     MinUpTime = 4 ;

     MinDownTime = 4 ;
    } // group UnitBlock_2

  group: UnitBlock_3 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 32 ;

     MaxPower = 117 ;

     DeltaRampUp = 40.736241 ;

     DeltaRampDown = 29.50909 ;

     QuadTerm = 0.077451 ;

     StartUpCost = 164.813229 ;

     LinearTerm = 36.620211 ;

     ConstTerm = 1238.751394 ;

     InitialPower = 93.124869 ;

     InitUpDownTime = 6 ;

     MinUpTime = 4 ;

     MinDownTime = 3 ;
    } // group UnitBlock_3

  group: UnitBlock_4 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 49 ;

     MaxPower = 101 ;

     DeltaRampUp = 24.56166 ;

     DeltaRampDown = 25.995604 ;

     QuadTerm = 0.056215 ;

     StartUpCost = 156.16122 ;

     LinearTerm = 44.78441 ;

     ConstTerm = 1583.627818 ;

     InitialPower = 0 ;

     InitUpDownTime = -3 ;

     MinUpTime = 4 ;

     MinDownTime = 3 ;
    } // group UnitBlock_4

  group: UnitBlock_5 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 37 ;

     MaxPower = 104 ;

     DeltaRampUp = 28.93614 ;

     DeltaRampDown = 26.847295 ;

     QuadTerm = 0.022816 ;

     StartUpCost = 147.182167 ;

     LinearTerm = 44.540744 ;

     ConstTerm = 1251.224742 ;

     InitialPower = 47.863497 ;

     InitUpDownTime = 2 ;

     MinUpTime = 4 ;

     MinDownTime = 4 ;
    } // group UnitBlock_5

  group: UnitBlock_6 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 31 ;

     MaxPower = 120 ;

     DeltaRampUp = 43.656099 ;

     DeltaRampDown = 37.841862 ;

     QuadTerm = 0.038801 ;

     StartUpCost = 176.742133 ;

     LinearTerm = 47.057446 ;

     ConstTerm = 1478.774181 ;

     InitialPower = 0 ;

     InitUpDownTime = -4 ;

     MinUpTime = 4 ;

     MinDownTime = 3 ;
    } // group UnitBlock_6

  group: UnitBlock_7 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 35 ;

     MaxPower = 125 ;

     DeltaRampUp = 34.103741 ;

     DeltaRampDown = 30.926967 ;

     QuadTerm = 0.026372 ;

     StartUpCost = 198.547689 ;

     LinearTerm = 43.97272 ;

     ConstTerm = 1466.32554 ;

     InitialPower = 51.074157 ;

     InitUpDownTime = 3 ;

     MinUpTime = 3 ;

     MinDownTime = 4 ;
    } // group UnitBlock_7

  group: UnitBlock_8 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 32 ;

     MaxPower = 118 ;

     DeltaRampUp = 29.40562 ;

     DeltaRampDown = 41.31081 ;

     QuadTerm = 0.081146 ;

     StartUpCost = 154.831371 ;

     LinearTerm = 42.671626 ;

     ConstTerm = 1494.90185 ;

     InitialPower = 48.195959 ;

     InitUpDownTime = 4 ;

     MinUpTime = 3 ;

     MinDownTime = 3 ;
    } // group UnitBlock_8

  group: UnitBlock_9 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 47 ;

     MaxPower = 117 ;

     DeltaRampUp = 34.441011 ;

     DeltaRampDown = 27.429171 ;

     QuadTerm = 0.011065 ;

     StartUpCost = 166.046397 ;

     LinearTerm = 42.188496 ;

     ConstTerm = 1647.915526 ;

     InitialPower = 0 ;

     InitUpDownTime = -1 ;

     MinUpTime = 4 ;

     MinDownTime = 4 ;
    } // group UnitBlock_9

  group: UnitBlock_10 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 44 ;

     MaxPower = 117 ;

     DeltaRampUp = 31.492907 ;

     DeltaRampDown = 32.266032 ;

     QuadTerm = 0.055061 ;

     StartUpCost = 171.456887 ;

     LinearTerm = 41.374108 ;

     ConstTerm = 1312.755284 ;

     InitialPower = 0 ;

     InitUpDownTime = -5 ;

     MinUpTime = 3 ;

     MinDownTime = 4 ;
    } // group UnitBlock_10

  group: UnitBlock_11 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 47 ;

     MaxPower = 102 ;

     DeltaRampUp = 24.836181 ;

     DeltaRampDown = 25.570258 ;

     QuadTerm = 0.043042 ;

     StartUpCost = 145.277788 ;

     LinearTerm = 39.73852 ;

     ConstTerm = 1515.370696 ;

     InitialPower = 74.699817 ;

     InitUpDownTime = 5 ;

     MinUpTime = 4 ;

     MinDownTime = 4 ;
    } // group UnitBlock_11

  group: UnitBlock_12 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 31 ;

     MaxPower = 106 ;

     DeltaRampUp = 28.834656 ;

     DeltaRampDown = 31.375273 ;

     QuadTerm = 0.034111 ;

     StartUpCost = 143.136402 ;

     LinearTerm = 40.42664 ;

     ConstTerm = 1414.557463 ;

     InitialPower = 0 ;

     InitUpDownTime = -4 ;

     MinUpTime = 3 ;

     MinDownTime = 4 ;
    } // group UnitBlock_12

  group: UnitBlock_13 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 45 ;

     MaxPower = 127 ;

     DeltaRampUp = 39.176925 ;

     DeltaRampDown = 39.958628 ;

     QuadTerm = 0.054564 ;

     StartUpCost = 172.348088 ;

     LinearTerm = 45.545178 ;

     ConstTerm = 1472.332969 ;

     InitialPower = 0 ;

     InitUpDownTime = -4 ;

     MinUpTime = 4 ;

     MinDownTime = 4 ;
    } // group UnitBlock_13

  group: UnitBlock_14 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 39 ;

     MaxPower = 108 ;

     DeltaRampUp = 23.532423 ;

     DeltaRampDown = 29.867217 ;

     QuadTerm = 0.030871 ;

     StartUpCost = 149.026432 ;

     LinearTerm = 41.697757 ;

     ConstTerm = 1482.860809 ;

     InitialPower = 95.340932 ;

     InitUpDownTime = 3 ;

     MinUpTime = 3 ;

     MinDownTime = 4 ;
    } // group UnitBlock_14

  group: UnitBlock_15 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 40 ;

     MaxPower = 107 ;

     DeltaRampUp = 22.439715 ;

     DeltaRampDown = 33.364835 ;

     QuadTerm = 0.052855 ;

     StartUpCost = 146.59593 ;

     LinearTerm = 48.939059 ;

     ConstTerm = 1622.768014 ;

     InitialPower = 56.453634 ;

     InitUpDownTime = 6 ;

     MinUpTime = 4 ;

     MinDownTime = 3 ;
    } // group UnitBlock_15

  group: UnitBlock_16 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 36 ;

     MaxPower = 119 ;

     DeltaRampUp = 32.069736 ;

     DeltaRampDown = 33.667163 ;

     QuadTerm = 0.022617 ;

     StartUpCost = 189.498315 ;

     LinearTerm = 48.241706 ;

     ConstTerm = 1566.729604 ;

     InitialPower = 0 ;

     InitUpDownTime = -4 ;

     MinUpTime = 4 ;

     MinDownTime = 4 ;
    } // group UnitBlock_16

  group: UnitBlock_17 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 32 ;

     MaxPower = 128 ;

     DeltaRampUp = 39.579142 ;

     DeltaRampDown = 34.573194 ;

     QuadTerm = 0.079745 ;

     StartUpCost = 187.609457 ;

     LinearTerm = 41.801225 ;

     ConstTerm = 1584.383283 ;

     InitialPower = 45.883866 ;

     InitUpDownTime = 6 ;

     MinUpTime = 4 ;

     MinDownTime = 3 ;
    } // group UnitBlock_17

  group: UnitBlock_18 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 35 ;

     MaxPower = 117 ;

     DeltaRampUp = 30.051254 ;

     DeltaRampDown = 34.004681 ;

     QuadTerm = 0.0844 ;

     StartUpCost = 160.858081 ;

     LinearTerm = 38.216259 ;

     ConstTerm = 1267.186548 ;

     InitialPower = 47.689581 ;

     InitUpDownTime = 2 ;

     MinUpTime = 4 ;

     MinDownTime = 3 ;
    } // group UnitBlock_18

  group: UnitBlock_19 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 37 ;

     MaxPower = 110 ;

     DeltaRampUp = 32.418854 ;

     DeltaRampDown = 27.291239 ;

     QuadTerm = 0.037164 ;

     StartUpCost = 165.288309 ;

     LinearTerm = 39.399743 ;

     ConstTerm = 1314.524866 ;

     InitialPower = 0 ;

     InitUpDownTime = -4 ;

     MinUpTime = 4 ;

     MinDownTime = 4 ;
    } // group UnitBlock_19

  group: UnitBlock_20 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 42 ;

     MaxPower = 125 ;

     DeltaRampUp = 37.130277 ;

     DeltaRampDown = 32.972846 ;

     QuadTerm = 0.02518 ;

     StartUpCost = 166.936572 ;

     LinearTerm = 44.305424 ;

     ConstTerm = 1299.80169 ;

     InitialPower = 76.115695 ;

     InitUpDownTime = 4 ;

     MinUpTime = 4 ;

     MinDownTime = 3 ;
    } // group UnitBlock_20

  group: UnitBlock_21 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 38 ;

     MaxPower = 129 ;

     DeltaRampUp = 39.599108 ;

     DeltaRampDown = 38.423328 ;

     QuadTerm = 0.085732 ;

     StartUpCost = 169.332983 ;

     LinearTerm = 39.891914 ;

     ConstTerm = 1312.711641 ;

     InitialPower = 71.32738 ;

     InitUpDownTime = 4 ;

     MinUpTime = 3 ;

     MinDownTime = 3 ;
    } // group UnitBlock_21

  group: UnitBlock_22 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 31 ;

     MaxPower = 112 ;

     DeltaRampUp = 33.54552 ;

     DeltaRampDown = 30.229696 ;

     QuadTerm = 0.049365 ;

     StartUpCost = 153.120614 ;

     LinearTerm = 40.084559 ;

     ConstTerm = 1471.992642 ;

     InitialPower = 69.198955 ;

     InitUpDownTime = 4 ;

     MinUpTime = 3 ;

     MinDownTime = 3 ;
    } // group UnitBlock_22

  group: UnitBlock_23 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 49 ;

     MaxPower = 112 ;

     DeltaRampUp = 29.55726 ;

     DeltaRampDown = 25.318495 ;

     QuadTerm = 0.054865 ;

     StartUpCost = 173.588783 ;

     LinearTerm = 44.973992 ;

     ConstTerm = 1226.069363 ;

     InitialPower = 0 ;

     InitUpDownTime = -2 ;

     MinUpTime = 3 ;

     MinDownTime = 3 ;
    } // group UnitBlock_23

  group: UnitBlock_24 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 44 ;

     MaxPower = 101 ;

     DeltaRampUp = 26.626531 ;

     DeltaRampDown = 23.094006 ;

     QuadTerm = 0.030581 ;

     StartUpCost = 131.931573 ;

     LinearTerm = 43.811802 ;

     ConstTerm = 1316.418122 ;

     InitialPower = 0 ;

     InitUpDownTime = -4 ;

     MinUpTime = 3 ;

     MinDownTime = 4 ;
    } // group UnitBlock_24

  group: UnitBlock_25 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 34 ;

     MaxPower = 127 ;

     DeltaRampUp = 33.507523 ;

     DeltaRampDown = 31.578323 ;

     QuadTerm = 0.043426 ;

     StartUpCost = 166.406091 ;

     LinearTerm = 43.558473 ;

     ConstTerm = 1492.453514 ;

     InitialPower = 0 ;

     InitUpDownTime = -3 ;

     MinUpTime = 3 ;

     MinDownTime = 4 ;
    } // group UnitBlock_25

  group: UnitBlock_26 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 47 ;

     MaxPower = 108 ;

     DeltaRampUp = 28.308392 ;

     DeltaRampDown = 21.91506 ;

     QuadTerm = 0.013129 ;

     StartUpCost = 170.8069 ;

     LinearTerm = 46.345231 ;

     ConstTerm = 1464.272998 ;

     InitialPower = 62.611341 ;

     InitUpDownTime = 2 ;

     MinUpTime = 3 ;

     MinDownTime = 3 ;
    } // group UnitBlock_26

  group: UnitBlock_27 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 43 ;

     MaxPower = 116 ;

     DeltaRampUp = 25.945206 ;

     DeltaRampDown = 31.614871 ;

     QuadTerm = 0.078126 ;

     StartUpCost = 180.886905 ;

     LinearTerm = 44.59263 ;

     ConstTerm = 1658.226731 ;

     InitialPower = 0 ;

     InitUpDownTime = -1 ;

     MinUpTime = 4 ;

     MinDownTime = 3 ;
    } // group UnitBlock_27

  group: UnitBlock_28 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 34 ;

     MaxPower = 108 ;

     DeltaRampUp = 35.268206 ;

     DeltaRampDown = 25.389977 ;

     QuadTerm = 0.025354 ;

     StartUpCost = 144.636224 ;

     LinearTerm = 44.283581 ;

     ConstTerm = 1466.432367 ;

     InitialPower = 89.323503 ;

     InitUpDownTime = 6 ;

     MinUpTime = 4 ;

     MinDownTime = 3 ;
    } // group UnitBlock_28

  group: UnitBlock_29 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 34 ;

     MaxPower = 107 ;

     DeltaRampUp = 33.619964 ;

     DeltaRampDown = 32.634475 ;

     QuadTerm = 0.022927 ;

     StartUpCost = 160.145478 ;

     LinearTerm = 39.985004 ;

     ConstTerm = 1531.895434 ;

     InitialPower = 87.268047 ;

     InitUpDownTime = 6 ;

     MinUpTime = 3 ;

     MinDownTime = 3 ;
    } // group UnitBlock_29

  group: UnitBlock_30 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 49 ;

     MaxPower = 112 ;

     DeltaRampUp = 28.242211 ;

     DeltaRampDown = 23.346382 ;

     QuadTerm = 0.076968 ;

     StartUpCost = 161.243183 ;

     LinearTerm = 42.996624 ;

     ConstTerm = 1553.832862 ;

     InitialPower = 81.592964 ;

     InitUpDownTime = 3 ;

     MinUpTime = 3 ;

     MinDownTime = 3 ;
    } // group UnitBlock_30

  group: UnitBlock_31 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 33 ;

     MaxPower = 122 ;

     DeltaRampUp = 43.888779 ;

     DeltaRampDown = 33.698425 ;

     QuadTerm = 0.017634 ;

     StartUpCost = 180.094528 ;

     LinearTerm = 47.584275 ;

     ConstTerm = 1375.290808 ;

     InitialPower = 86.537779 ;

     InitUpDownTime = 5 ;

     MinUpTime = 4 ;

     MinDownTime = 3 ;
    } // group UnitBlock_31

  group: UnitBlock_32 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 36 ;

     MaxPower = 108 ;

     DeltaRampUp = 24.355964 ;

     DeltaRampDown = 33.413078 ;

     QuadTerm = 0.080852 ;

     StartUpCost = 145.530184 ;

     LinearTerm = 41.358582 ;

     ConstTerm = 1332.466657 ;

     InitialPower = 0 ;

     InitUpDownTime = -2 ;

     MinUpTime = 4 ;

     MinDownTime = 4 ;
    } // group UnitBlock_32

  group: UnitBlock_33 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 34 ;

     MaxPower = 110 ;

     DeltaRampUp = 30.099514 ;

     DeltaRampDown = 29.881771 ;

     QuadTerm = 0.05597 ;

     StartUpCost = 155.375715 ;

     LinearTerm = 42.993592 ;

     ConstTerm = 1578.394097 ;

     InitialPower = 65.856546 ;

     InitUpDownTime = 2 ;

     MinUpTime = 4 ;

     MinDownTime = 4 ;
    } // group UnitBlock_33

  group: UnitBlock_34 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 33 ;

     MaxPower = 104 ;

     DeltaRampUp = 27.171551 ;

     DeltaRampDown = 26.860644 ;

     QuadTerm = 0.042365 ;

     StartUpCost = 144.362159 ;

     LinearTerm = 41.241082 ;

     ConstTerm = 1250.346617 ;

     InitialPower = 0 ;

     InitUpDownTime = -3 ;

     MinUpTime = 3 ;

     MinDownTime = 3 ;
    } // group UnitBlock_34

  group: UnitBlock_35 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 50 ;

     MaxPower = 115 ;

     DeltaRampUp = 25.491846 ;

     DeltaRampDown = 23.302492 ;

     QuadTerm = 0.026175 ;

     StartUpCost = 164.865956 ;

     LinearTerm = 45.724492 ;

     ConstTerm = 1498.130673 ;

     InitialPower = 97.089877 ;

     InitUpDownTime = 4 ;

     MinUpTime = 4 ;

     MinDownTime = 4 ;
    } // group UnitBlock_35

  group: UnitBlock_36 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 34 ;

     MaxPower = 104 ;

     DeltaRampUp = 27.326982 ;

     DeltaRampDown = 31.729754 ;

     QuadTerm = 0.03537 ;

     StartUpCost = 141.56592 ;

     LinearTerm = 40.195133 ;

     ConstTerm = 1394.642142 ;

     InitialPower = 0 ;

     InitUpDownTime = -4 ;

     MinUpTime = 4 ;

     MinDownTime = 3 ;
    } // group UnitBlock_36

  group: UnitBlock_37 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 39 ;

     MaxPower = 120 ;

     DeltaRampUp = 35.673018 ;

     DeltaRampDown = 30.726311 ;

     QuadTerm = 0.026502 ;

     StartUpCost = 184.067038 ;

     LinearTerm = 41.561356 ;

     ConstTerm = 1342.564725 ;

     InitialPower = 0 ;

     InitUpDownTime = -4 ;

     MinUpTime = 3 ;

     MinDownTime = 4 ;
    } // group UnitBlock_37

  group: UnitBlock_38 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 31 ;

     MaxPower = 125 ;

     DeltaRampUp = 32.663517 ;

     DeltaRampDown = 36.800675 ;

     QuadTerm = 0.026641 ;

     StartUpCost = 195.129833 ;

     LinearTerm = 44.733603 ;

     ConstTerm = 1284.052001 ;

     InitialPower = 66.537911 ;

     InitUpDownTime = 2 ;

     MinUpTime = 3 ;

     MinDownTime = 4 ;
    } // group UnitBlock_38

  group: UnitBlock_39 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 43 ;

     MaxPower = 116 ;

     DeltaRampUp = 33.12623 ;

     DeltaRampDown = 33.631657 ;

     QuadTerm = 0.080232 ;

     StartUpCost = 159.622689 ;

     LinearTerm = 43.986283 ;

     ConstTerm = 1402.717612 ;

     InitialPower = 0 ;

     InitUpDownTime = -6 ;

     MinUpTime = 3 ;

     MinDownTime = 4 ;
    } // group UnitBlock_39

  group: UnitBlock_40 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 33 ;

     MaxPower = 103 ;

     DeltaRampUp = 25.753794 ;

     DeltaRampDown = 24.717744 ;

     QuadTerm = 0.091677 ;

     StartUpCost = 149.606931 ;

     LinearTerm = 40.308456 ;

     ConstTerm = 1593.158136 ;

     InitialPower = 0 ;

     InitUpDownTime = -6 ;

     MinUpTime = 4 ;

     MinDownTime = 3 ;
    } // group UnitBlock_40

  group: UnitBlock_41 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 38 ;

     MaxPower = 104 ;

     DeltaRampUp = 24.292906 ;

     DeltaRampDown = 22.56611 ;

     QuadTerm = 0.086324 ;

     StartUpCost = 162.580992 ;

     LinearTerm = 43.22932 ;

     ConstTerm = 1351.263354 ;

     InitialPower = 86.48438 ;

     InitUpDownTime = 4 ;

     MinUpTime = 4 ;

     MinDownTime = 4 ;
    } // group UnitBlock_41

  group: UnitBlock_42 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 31 ;

     MaxPower = 103 ;

     DeltaRampUp = 35.264283 ;

     DeltaRampDown = 25.275607 ;

     QuadTerm = 0.046859 ;

     StartUpCost = 156.553823 ;

     LinearTerm = 36.983728 ;

     ConstTerm = 1351.608604 ;

     InitialPower = 39.426795 ;

     InitUpDownTime = 4 ;

     MinUpTime = 4 ;

     MinDownTime = 3 ;
    } // group UnitBlock_42

  group: UnitBlock_43 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 43 ;

     MaxPower = 104 ;

     DeltaRampUp = 30.281673 ;

     DeltaRampDown = 20.364394 ;

     QuadTerm = 0.03753 ;

     StartUpCost = 135.391568 ;

     LinearTerm = 43.097043 ;

     ConstTerm = 1484.807643 ;

     InitialPower = 0 ;

     InitUpDownTime = -6 ;

     MinUpTime = 4 ;

     MinDownTime = 3 ;
    } // group UnitBlock_43

  group: UnitBlock_44 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 44 ;

     MaxPower = 103 ;

     DeltaRampUp = 25.825035 ;

     DeltaRampDown = 26.059247 ;

     QuadTerm = 0.072559 ;

     StartUpCost = 147.050778 ;

     LinearTerm = 46.100769 ;

     ConstTerm = 1589.035018 ;

     InitialPower = 0 ;

     InitUpDownTime = -2 ;

     MinUpTime = 4 ;

     MinDownTime = 4 ;
    } // group UnitBlock_44

  group: UnitBlock_45 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 49 ;

     MaxPower = 103 ;

     DeltaRampUp = 22.279089 ;

     DeltaRampDown = 26.243082 ;

     QuadTerm = 0.083074 ;

     StartUpCost = 161.608422 ;

     LinearTerm = 45.407242 ;

     ConstTerm = 1525.066558 ;

     InitialPower = 77.628011 ;

     InitUpDownTime = 7 ;

     MinUpTime = 4 ;

     MinDownTime = 3 ;
    } // group UnitBlock_45

  group: UnitBlock_46 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 46 ;

     MaxPower = 123 ;

     DeltaRampUp = 32.609233 ;

     DeltaRampDown = 29.246418 ;

     QuadTerm = 0.022306 ;

     StartUpCost = 179.523161 ;

     LinearTerm = 48.920256 ;

     ConstTerm = 1367.952679 ;

     InitialPower = 0 ;

     InitUpDownTime = -4 ;

     MinUpTime = 4 ;

     MinDownTime = 3 ;
    } // group UnitBlock_46

  group: UnitBlock_47 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 32 ;

     MaxPower = 110 ;

     DeltaRampUp = 38.174168 ;

     DeltaRampDown = 33.16814 ;

     QuadTerm = 0.011693 ;

     StartUpCost = 175.229102 ;

     LinearTerm = 43.284808 ;

     ConstTerm = 1224.415336 ;

     InitialPower = 0 ;

     InitUpDownTime = -3 ;

     MinUpTime = 3 ;

     MinDownTime = 3 ;
    } // group UnitBlock_47

  group: UnitBlock_48 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 40 ;

     MaxPower = 121 ;

     DeltaRampUp = 34.251483 ;

     DeltaRampDown = 36.85219 ;

     QuadTerm = 0.067248 ;

     StartUpCost = 177.05985 ;

     LinearTerm = 44.724263 ;

     ConstTerm = 1440.676989 ;

     InitialPower = 0 ;

     InitUpDownTime = -1 ;

     MinUpTime = 4 ;

     MinDownTime = 3 ;
    } // group UnitBlock_48

  group: UnitBlock_49 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 48 ;

     MaxPower = 128 ;

     DeltaRampUp = 33.329606 ;

     DeltaRampDown = 32.739142 ;

     QuadTerm = 0.028768 ;

     StartUpCost = 171.789294 ;

     LinearTerm = 44.866184 ;

     ConstTerm = 1377.940897 ;

     InitialPower = 0 ;

     InitUpDownTime = -3 ;

     MinUpTime = 4 ;

     MinDownTime = 4 ;
    } // group UnitBlock_49

  group: UnitBlock_50 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 62 ;

     MaxPower = 172 ;

     DeltaRampUp = 39.889306 ;

     DeltaRampDown = 51.440197 ;

     QuadTerm = 0.008527 ;

     StartUpCost = 255.089882 ;

     LinearTerm = 63.015858 ;

     ConstTerm = 1998.537368 ;

     InitialPower = 130.563357 ;

     InitUpDownTime = 2 ;

     MinUpTime = 8 ;

     MinDownTime = 7 ;
    } // group UnitBlock_50

  group: UnitBlock_51 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 51 ;

     MaxPower = 216 ;

     DeltaRampUp = 71.162473 ;

     DeltaRampDown = 72.969656 ;

     QuadTerm = 0.008051 ;

     StartUpCost = 313.441221 ;

     LinearTerm = 62.773327 ;

     ConstTerm = 2764.394152 ;

     InitialPower = 0 ;

     InitUpDownTime = -11 ;

     MinUpTime = 7 ;

     MinDownTime = 8 ;
    } // group UnitBlock_51

  group: UnitBlock_52 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 55 ;

     MaxPower = 212 ;

     DeltaRampUp = 69.217155 ;

     DeltaRampDown = 72.241803 ;

     QuadTerm = 0.008258 ;

     StartUpCost = 283.674769 ;

     LinearTerm = 61.072999 ;

     ConstTerm = 2305.911948 ;

     InitialPower = 114.97475 ;

     InitUpDownTime = 7 ;

     MinUpTime = 8 ;

     MinDownTime = 7 ;
    } // group UnitBlock_52

  group: UnitBlock_53 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 59 ;

     MaxPower = 217 ;

     DeltaRampUp = 73.588212 ;

     DeltaRampDown = 62.973606 ;

     QuadTerm = 0.008626 ;

     StartUpCost = 319.799097 ;

     LinearTerm = 63.005461 ;

     ConstTerm = 1756.118006 ;

     InitialPower = 108.177948 ;

     InitUpDownTime = 4 ;

     MinUpTime = 8 ;

     MinDownTime = 7 ;
    } // group UnitBlock_53

  group: UnitBlock_54 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 63 ;

     MaxPower = 191 ;

     DeltaRampUp = 52.205128 ;

     DeltaRampDown = 56.952365 ;

     QuadTerm = 0.008664 ;

     StartUpCost = 297.348017 ;

     LinearTerm = 61.619657 ;

     ConstTerm = 1932.927265 ;

     InitialPower = 0 ;

     InitUpDownTime = -3 ;

     MinUpTime = 8 ;

     MinDownTime = 8 ;
    } // group UnitBlock_54

  group: UnitBlock_55 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 67 ;

     MaxPower = 197 ;

     DeltaRampUp = 46.795835 ;

     DeltaRampDown = 46.89932 ;

     QuadTerm = 0.008258 ;

     StartUpCost = 286.490676 ;

     LinearTerm = 60.921116 ;

     ConstTerm = 1856.411472 ;

     InitialPower = 139.971908 ;

     InitUpDownTime = 2 ;

     MinUpTime = 7 ;

     MinDownTime = 8 ;
    } // group UnitBlock_55

  group: UnitBlock_56 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 57 ;

     MaxPower = 184 ;

     DeltaRampUp = 45.592908 ;

     DeltaRampDown = 51.849717 ;

     QuadTerm = 0.007533 ;

     StartUpCost = 279.864828 ;

     LinearTerm = 56.43286 ;

     ConstTerm = 1703.012162 ;

     InitialPower = 70.297815 ;

     InitUpDownTime = 7 ;

     MinUpTime = 7 ;

     MinDownTime = 8 ;
    } // group UnitBlock_56

  group: UnitBlock_57 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 56 ;

     MaxPower = 208 ;

     DeltaRampUp = 51.531527 ;

     DeltaRampDown = 60.455527 ;

     QuadTerm = 0.008114 ;

     StartUpCost = 320.177027 ;

     LinearTerm = 58.544689 ;

     ConstTerm = 2571.661783 ;

     InitialPower = 0 ;

     InitUpDownTime = -10 ;

     MinUpTime = 8 ;

     MinDownTime = 7 ;
    } // group UnitBlock_57

  group: UnitBlock_58 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 59 ;

     MaxPower = 196 ;

     DeltaRampUp = 48.664084 ;

     DeltaRampDown = 65.329407 ;

     QuadTerm = 0.00845 ;

     StartUpCost = 281.323438 ;

     LinearTerm = 65.759878 ;

     ConstTerm = 2507.505069 ;

     InitialPower = 0 ;

     InitUpDownTime = -1 ;

     MinUpTime = 8 ;

     MinDownTime = 7 ;
    } // group UnitBlock_58

  group: UnitBlock_59 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 62 ;

     MaxPower = 178 ;

     DeltaRampUp = 40.534413 ;

     DeltaRampDown = 40.475882 ;

     QuadTerm = 0.007855 ;

     StartUpCost = 269.690439 ;

     LinearTerm = 56.924357 ;

     ConstTerm = 1904.909631 ;

     InitialPower = 0 ;

     InitUpDownTime = -2 ;

     MinUpTime = 7 ;

     MinDownTime = 8 ;
    } // group UnitBlock_59

  group: UnitBlock_60 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 60 ;

     MaxPower = 179 ;

     DeltaRampUp = 57.258152 ;

     DeltaRampDown = 42.121917 ;

     QuadTerm = 0.00817 ;

     StartUpCost = 237.378545 ;

     LinearTerm = 57.476333 ;

     ConstTerm = 2141.086283 ;

     InitialPower = 139.95364 ;

     InitUpDownTime = 7 ;

     MinUpTime = 7 ;

     MinDownTime = 8 ;
    } // group UnitBlock_60

  group: UnitBlock_61 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 53 ;

     MaxPower = 176 ;

     DeltaRampUp = 47.263031 ;

     DeltaRampDown = 54.867788 ;

     QuadTerm = 0.007944 ;

     StartUpCost = 254.426767 ;

     LinearTerm = 60.755117 ;

     ConstTerm = 2097.775031 ;

     InitialPower = 69.10074 ;

     InitUpDownTime = 8 ;

     MinUpTime = 8 ;

     MinDownTime = 8 ;
    } // group UnitBlock_61

  group: UnitBlock_62 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 56 ;

     MaxPower = 178 ;

     DeltaRampUp = 45.863705 ;

     DeltaRampDown = 59.851478 ;

     QuadTerm = 0.007575 ;

     StartUpCost = 267.131494 ;

     LinearTerm = 55.796157 ;

     ConstTerm = 2510.774446 ;

     InitialPower = 105.145604 ;

     InitUpDownTime = 9 ;

     MinUpTime = 7 ;

     MinDownTime = 8 ;
    } // group UnitBlock_62

  group: UnitBlock_63 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 60 ;

     MaxPower = 171 ;

     DeltaRampUp = 48.451881 ;

     DeltaRampDown = 52.137987 ;

     QuadTerm = 0.007656 ;

     StartUpCost = 229.207097 ;

     LinearTerm = 54.398178 ;

     ConstTerm = 2775.650576 ;

     InitialPower = 0 ;

     InitUpDownTime = -10 ;

     MinUpTime = 7 ;

     MinDownTime = 8 ;
    } // group UnitBlock_63

  group: UnitBlock_64 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 63 ;

     MaxPower = 219 ;

     DeltaRampUp = 73.13488 ;

     DeltaRampDown = 52.291246 ;

     QuadTerm = 0.008417 ;

     StartUpCost = 287.24375 ;

     LinearTerm = 58.850873 ;

     ConstTerm = 2236.623169 ;

     InitialPower = 0 ;

     InitUpDownTime = -8 ;

     MinUpTime = 8 ;

     MinDownTime = 7 ;
    } // group UnitBlock_64

  group: UnitBlock_65 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 56 ;

     MaxPower = 184 ;

     DeltaRampUp = 55.956938 ;

     DeltaRampDown = 62.693912 ;

     QuadTerm = 0.007667 ;

     StartUpCost = 247.739332 ;

     LinearTerm = 56.202172 ;

     ConstTerm = 2209.588085 ;

     InitialPower = 143.663094 ;

     InitUpDownTime = 7 ;

     MinUpTime = 7 ;

     MinDownTime = 7 ;
    } // group UnitBlock_65

  group: UnitBlock_66 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 61 ;

     MaxPower = 201 ;

     DeltaRampUp = 50.995138 ;

     DeltaRampDown = 62.605004 ;

     QuadTerm = 0.008274 ;

     StartUpCost = 295.563735 ;

     LinearTerm = 61.726152 ;

     ConstTerm = 2118.542281 ;

     InitialPower = 0 ;

     InitUpDownTime = -6 ;

     MinUpTime = 7 ;

     MinDownTime = 7 ;
    } // group UnitBlock_66

  group: UnitBlock_67 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 64 ;

     MaxPower = 183 ;

     DeltaRampUp = 50.355783 ;

     DeltaRampDown = 56.611519 ;

     QuadTerm = 0.008064 ;

     StartUpCost = 275.362319 ;

     LinearTerm = 57.457546 ;

     ConstTerm = 1590.367645 ;

     InitialPower = 0 ;

     InitUpDownTime = -7 ;

     MinUpTime = 7 ;

     MinDownTime = 8 ;
    } // group UnitBlock_67

  group: UnitBlock_68 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 65 ;

     MaxPower = 179 ;

     DeltaRampUp = 40.427385 ;

     DeltaRampDown = 46.310665 ;

     QuadTerm = 0.008183 ;

     StartUpCost = 286.274713 ;

     LinearTerm = 60.682449 ;

     ConstTerm = 2352.002843 ;

     InitialPower = 105.723071 ;

     InitUpDownTime = 3 ;

     MinUpTime = 8 ;

     MinDownTime = 7 ;
    } // group UnitBlock_68

  group: UnitBlock_69 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 66 ;

     MaxPower = 185 ;

     DeltaRampUp = 39.985462 ;

     DeltaRampDown = 52.370073 ;

     QuadTerm = 0.007834 ;

     StartUpCost = 291.731793 ;

     LinearTerm = 56.33003 ;

     ConstTerm = 1598.845359 ;

     InitialPower = 0 ;

     InitUpDownTime = -10 ;

     MinUpTime = 7 ;

     MinDownTime = 7 ;
    } // group UnitBlock_69

  group: UnitBlock_70 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 51 ;

     MaxPower = 207 ;

     DeltaRampUp = 72.057978 ;

     DeltaRampDown = 57.22673 ;

     QuadTerm = 0.008228 ;

     StartUpCost = 272.903584 ;

     LinearTerm = 57.121968 ;

     ConstTerm = 2676.244294 ;

     InitialPower = 171.320594 ;

     InitUpDownTime = 5 ;

     MinUpTime = 8 ;

     MinDownTime = 7 ;
    } // group UnitBlock_70

  group: UnitBlock_71 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 52 ;

     MaxPower = 186 ;

     DeltaRampUp = 49.225656 ;

     DeltaRampDown = 58.436912 ;

     QuadTerm = 0.007602 ;

     StartUpCost = 287.919507 ;

     LinearTerm = 60.279495 ;

     ConstTerm = 2332.11982 ;

     InitialPower = 0 ;

     InitUpDownTime = -7 ;

     MinUpTime = 7 ;

     MinDownTime = 7 ;
    } // group UnitBlock_71

  group: UnitBlock_72 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 51 ;

     MaxPower = 180 ;

     DeltaRampUp = 57.68777 ;

     DeltaRampDown = 50.777219 ;

     QuadTerm = 0.00761 ;

     StartUpCost = 270.62856 ;

     LinearTerm = 55.805081 ;

     ConstTerm = 1765.556471 ;

     InitialPower = 75.791176 ;

     InitUpDownTime = 3 ;

     MinUpTime = 8 ;

     MinDownTime = 8 ;
    } // group UnitBlock_72

  group: UnitBlock_73 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 53 ;

     MaxPower = 217 ;

     DeltaRampUp = 68.179389 ;

     DeltaRampDown = 80.045402 ;

     QuadTerm = 0.008501 ;

     StartUpCost = 312.760935 ;

     LinearTerm = 63.388207 ;

     ConstTerm = 1710.957118 ;

     InitialPower = 123.894531 ;

     InitUpDownTime = 7 ;

     MinUpTime = 7 ;

     MinDownTime = 8 ;
    } // group UnitBlock_73

  group: UnitBlock_74 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 59 ;

     MaxPower = 170 ;

     DeltaRampUp = 39.543064 ;

     DeltaRampDown = 39.925924 ;

     QuadTerm = 0.007804 ;

     StartUpCost = 268.314725 ;

     LinearTerm = 55.798832 ;

     ConstTerm = 2025.673822 ;

     InitialPower = 149.876628 ;

     InitUpDownTime = 6 ;

     MinUpTime = 7 ;

     MinDownTime = 8 ;
    } // group UnitBlock_74

  group: UnitBlock_75 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 69 ;

     MaxPower = 193 ;

     DeltaRampUp = 58.855318 ;

     DeltaRampDown = 43.036775 ;

     QuadTerm = 0.007966 ;

     StartUpCost = 256.137959 ;

     LinearTerm = 59.040321 ;

     ConstTerm = 1765.628642 ;

     InitialPower = 0 ;

     InitUpDownTime = -3 ;

     MinUpTime = 8 ;

     MinDownTime = 7 ;
    } // group UnitBlock_75

  group: UnitBlock_76 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 68 ;

     MaxPower = 204 ;

     DeltaRampUp = 63.339977 ;

     DeltaRampDown = 58.527384 ;

     QuadTerm = 0.008519 ;

     StartUpCost = 307.977498 ;

     LinearTerm = 63.440932 ;

     ConstTerm = 2121.979692 ;

     InitialPower = 117.255563 ;

     InitUpDownTime = 10 ;

     MinUpTime = 7 ;

     MinDownTime = 8 ;
    } // group UnitBlock_76

  group: UnitBlock_77 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 64 ;

     MaxPower = 184 ;

     DeltaRampUp = 47.60884 ;

     DeltaRampDown = 53.129611 ;

     QuadTerm = 0.008394 ;

     StartUpCost = 287.791831 ;

     LinearTerm = 63.610612 ;

     ConstTerm = 2798.752493 ;

     InitialPower = 0 ;

     InitUpDownTime = -7 ;

     MinUpTime = 7 ;

     MinDownTime = 8 ;
    } // group UnitBlock_77

  group: UnitBlock_78 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 55 ;

     MaxPower = 215 ;

     DeltaRampUp = 73.431949 ;

     DeltaRampDown = 65.490373 ;

     QuadTerm = 0.007821 ;

     StartUpCost = 312.996973 ;

     LinearTerm = 63.798147 ;

     ConstTerm = 2643.811363 ;

     InitialPower = 132.004096 ;

     InitUpDownTime = 2 ;

     MinUpTime = 7 ;

     MinDownTime = 8 ;
    } // group UnitBlock_78

  group: UnitBlock_79 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 56 ;

     MaxPower = 193 ;

     DeltaRampUp = 64.681666 ;

     DeltaRampDown = 48.759094 ;

     QuadTerm = 0.008187 ;

     StartUpCost = 265.479574 ;

     LinearTerm = 61.821812 ;

     ConstTerm = 1851.202244 ;

     InitialPower = 0 ;

     InitUpDownTime = -2 ;

     MinUpTime = 8 ;

     MinDownTime = 7 ;
    } // group UnitBlock_79

  group: UnitBlock_80 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 54 ;

     MaxPower = 188 ;

     DeltaRampUp = 57.837682 ;

     DeltaRampDown = 45.466508 ;

     QuadTerm = 0.008284 ;

     StartUpCost = 266.396158 ;

     LinearTerm = 61.172862 ;

     ConstTerm = 2057.905202 ;

     InitialPower = 140.116874 ;

     InitUpDownTime = 5 ;

     MinUpTime = 7 ;

     MinDownTime = 7 ;
    } // group UnitBlock_80

  group: UnitBlock_81 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 59 ;

     MaxPower = 204 ;

     DeltaRampUp = 67.4818 ;

     DeltaRampDown = 53.673542 ;

     QuadTerm = 0.007513 ;

     StartUpCost = 280.019692 ;

     LinearTerm = 55.13882 ;

     ConstTerm = 1813.061241 ;

     InitialPower = 180.906953 ;

     InitUpDownTime = 8 ;

     MinUpTime = 8 ;

     MinDownTime = 8 ;
    } // group UnitBlock_81

  group: UnitBlock_82 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 62 ;

     MaxPower = 182 ;

     DeltaRampUp = 50.194706 ;

     DeltaRampDown = 51.229915 ;

     QuadTerm = 0.007639 ;

     StartUpCost = 272.876088 ;

     LinearTerm = 55.146694 ;

     ConstTerm = 2865.936405 ;

     InitialPower = 0 ;

     InitUpDownTime = -8 ;

     MinUpTime = 8 ;

     MinDownTime = 7 ;
    } // group UnitBlock_82

  group: UnitBlock_83 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 98 ;

     MaxPower = 308 ;

     DeltaRampUp = 70.475732 ;

     DeltaRampDown = 95.298587 ;

     QuadTerm = 0.006083 ;

     StartUpCost = 461.688367 ;

     LinearTerm = 52.012921 ;

     ConstTerm = 3170.537862 ;

     InitialPower = 156.428514 ;

     InitUpDownTime = 3 ;

     MinUpTime = 13 ;

     MinDownTime = 12 ;
    } // group UnitBlock_83

  group: UnitBlock_84 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 95 ;

     MaxPower = 300 ;

     DeltaRampUp = 91.132321 ;

     DeltaRampDown = 87.147756 ;

     QuadTerm = 0.003357 ;

     StartUpCost = 479.468553 ;

     LinearTerm = 58.422155 ;

     ConstTerm = 3189.685247 ;

     InitialPower = 197.804349 ;

     InitUpDownTime = 10 ;

     MinUpTime = 11 ;

     MinDownTime = 14 ;
    } // group UnitBlock_84

  group: UnitBlock_85 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 81 ;

     MaxPower = 325 ;

     DeltaRampUp = 117.823036 ;

     DeltaRampDown = 95.927581 ;

     QuadTerm = 0.004246 ;

     StartUpCost = 468.953356 ;

     LinearTerm = 62.064275 ;

     ConstTerm = 3410.933099 ;

     InitialPower = 0 ;

     InitUpDownTime = -10 ;

     MinUpTime = 12 ;

     MinDownTime = 10 ;
    } // group UnitBlock_85

  group: UnitBlock_86 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 95 ;

     MaxPower = 328 ;

     DeltaRampUp = 79.420377 ;

     DeltaRampDown = 91.968638 ;

     QuadTerm = 0.001803 ;

     StartUpCost = 520.195596 ;

     LinearTerm = 54.655768 ;

     ConstTerm = 3507.94141 ;

     InitialPower = 0 ;

     InitUpDownTime = -5 ;

     MinUpTime = 14 ;

     MinDownTime = 12 ;
    } // group UnitBlock_86

  group: UnitBlock_87 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 79 ;

     MaxPower = 320 ;

     DeltaRampUp = 118.702701 ;

     DeltaRampDown = 101.927196 ;

     QuadTerm = 0.001185 ;

     StartUpCost = 498.486333 ;

     LinearTerm = 51.828804 ;

     ConstTerm = 3428.690824 ;

     InitialPower = 0 ;

     InitUpDownTime = -14 ;

     MinUpTime = 12 ;

     MinDownTime = 12 ;
    } // group UnitBlock_87

  group: UnitBlock_88 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 81 ;

     MaxPower = 329 ;

     DeltaRampUp = 107.129349 ;

     DeltaRampDown = 91.920024 ;

     QuadTerm = 0.004986 ;

     StartUpCost = 506.943965 ;

     LinearTerm = 59.705068 ;

     ConstTerm = 3235.624719 ;

     InitialPower = 0 ;

     InitUpDownTime = -8 ;

     MinUpTime = 11 ;

     MinDownTime = 13 ;
    } // group UnitBlock_88

  group: UnitBlock_89 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 79 ;

     MaxPower = 303 ;

     DeltaRampUp = 78.346071 ;

     DeltaRampDown = 88.381288 ;

     QuadTerm = 0.005478 ;

     StartUpCost = 418.952437 ;

     LinearTerm = 53.003374 ;

     ConstTerm = 2845.893064 ;

     InitialPower = 142.0385 ;

     InitUpDownTime = 2 ;

     MinUpTime = 12 ;

     MinDownTime = 12 ;
    } // group UnitBlock_89

  group: UnitBlock_90 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 98 ;

     MaxPower = 329 ;

     DeltaRampUp = 95.321475 ;

     DeltaRampDown = 111.692087 ;

     QuadTerm = 0.002614 ;

     StartUpCost = 468.395761 ;

     LinearTerm = 60.084926 ;

     ConstTerm = 2945.020389 ;

     InitialPower = 147.566621 ;

     InitUpDownTime = 11 ;

     MinUpTime = 14 ;

     MinDownTime = 12 ;
    } // group UnitBlock_90

  group: UnitBlock_91 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 83 ;

     MaxPower = 281 ;

     DeltaRampUp = 75.595706 ;

     DeltaRampDown = 84.68139 ;

     QuadTerm = 0.002681 ;

     StartUpCost = 435.88127 ;

     LinearTerm = 57.639135 ;

     ConstTerm = 2935.259213 ;

     InitialPower = 0 ;

     InitUpDownTime = -1 ;

     MinUpTime = 13 ;

     MinDownTime = 13 ;
    } // group UnitBlock_91

  group: UnitBlock_92 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 80 ;

     MaxPower = 286 ;

     DeltaRampUp = 88.981362 ;

     DeltaRampDown = 82.141206 ;

     QuadTerm = 0.00297 ;

     StartUpCost = 434.362733 ;

     LinearTerm = 61.588142 ;

     ConstTerm = 2990.129718 ;

     InitialPower = 192.162989 ;

     InitUpDownTime = 16 ;

     MinUpTime = 14 ;

     MinDownTime = 13 ;
    } // group UnitBlock_92

  group: UnitBlock_93 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 84 ;

     MaxPower = 303 ;

     DeltaRampUp = 90.76112 ;

     DeltaRampDown = 97.980727 ;

     QuadTerm = 0.003597 ;

     StartUpCost = 405.290769 ;

     LinearTerm = 58.430151 ;

     ConstTerm = 3018.368098 ;

     InitialPower = 128.539171 ;

     InitUpDownTime = 12 ;

     MinUpTime = 10 ;

     MinDownTime = 14 ;
    } // group UnitBlock_93

  group: UnitBlock_94 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 76 ;

     MaxPower = 292 ;

     DeltaRampUp = 96.251869 ;

     DeltaRampDown = 81.624702 ;

     QuadTerm = 0.002488 ;

     StartUpCost = 419.401162 ;

     LinearTerm = 54.657715 ;

     ConstTerm = 3092.026956 ;

     InitialPower = 0 ;

     InitUpDownTime = -8 ;

     MinUpTime = 11 ;

     MinDownTime = 10 ;
    } // group UnitBlock_94

  group: UnitBlock_95 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 71 ;

     MaxPower = 296 ;

     DeltaRampUp = 82.822111 ;

     DeltaRampDown = 95.176682 ;

     QuadTerm = 0.002 ;

     StartUpCost = 392.62987 ;

     LinearTerm = 57.890043 ;

     ConstTerm = 3395.635577 ;

     InitialPower = 190.06271 ;

     InitUpDownTime = 3 ;

     MinUpTime = 12 ;

     MinDownTime = 11 ;
    } // group UnitBlock_95

  group: UnitBlock_96 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 94 ;

     MaxPower = 323 ;

     DeltaRampUp = 92.297083 ;

     DeltaRampDown = 113.490132 ;

     QuadTerm = 0.000996 ;

     StartUpCost = 452.934036 ;

     LinearTerm = 59.118798 ;

     ConstTerm = 3033.645411 ;

     InitialPower = 0 ;

     InitUpDownTime = -13 ;

     MinUpTime = 13 ;

     MinDownTime = 12 ;
    } // group UnitBlock_96

  group: UnitBlock_97 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 91 ;

     MaxPower = 320 ;

     DeltaRampUp = 94.210202 ;

     DeltaRampDown = 93.894096 ;

     QuadTerm = 0.005539 ;

     StartUpCost = 478.922203 ;

     LinearTerm = 57.688966 ;

     ConstTerm = 3845.351422 ;

     InitialPower = 0 ;

     InitUpDownTime = -5 ;

     MinUpTime = 14 ;

     MinDownTime = 12 ;
    } // group UnitBlock_97

  group: UnitBlock_98 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 100 ;

     MaxPower = 285 ;

     DeltaRampUp = 82.340032 ;

     DeltaRampDown = 68.003144 ;

     QuadTerm = 0.00276 ;

     StartUpCost = 380.458161 ;

     LinearTerm = 55.680676 ;

     ConstTerm = 3990.735033 ;

     InitialPower = 170.322822 ;

     InitUpDownTime = 12 ;

     MinUpTime = 12 ;

     MinDownTime = 11 ;
    } // group UnitBlock_98

  group: UnitBlock_99 {
    variables:
    	double MinPower ;
    	double MaxPower ;
    	double DeltaRampUp ;
    	double DeltaRampDown ;
    	double QuadTerm ;
    	double StartUpCost ;
    	double LinearTerm ;
    	double ConstTerm ;
    	double InitialPower ;
    	int64 InitUpDownTime ;
    	uint64 MinUpTime ;
    	uint64 MinDownTime ;

    // group attributes:
    		:type = "ThermalUnitBlock" ;
    data:

     MinPower = 72 ;

     MaxPower = 321 ;

     DeltaRampUp = 111.7568 ;

     DeltaRampDown = 90.067499 ;

     QuadTerm = 0.005254 ;

     StartUpCost = 458.524755 ;

     LinearTerm = 54.487536 ;

     ConstTerm = 4037.843596 ;

     InitialPower = 107.619989 ;

     InitUpDownTime = 13 ;

     MinUpTime = 12 ;

     MinDownTime = 12 ;
    } // group UnitBlock_99
  } // group Block_0
}

# ╔═╡ 6e26bc9c-d5a0-4e3d-9ccf-d8b20474c4c7


# ╔═╡ Cell order:
# ╠═29968f9e-1223-45ee-883a-ce6628d32b44
# ╠═ffba9312-b5dd-4f3e-abaa-e70ee009bafc
# ╠═4597246a-0e93-477e-ae67-4173e67e6565
# ╠═fe217d2c-7353-4d14-bba4-4a2525d2ff85
# ╠═a60d7a86-4768-4c3c-b351-a1a4c638afb8
# ╠═d50266f0-d6aa-4a5b-90c5-caddb883de44
# ╠═1142d03d-6c46-4f64-ab04-2a1fc8f7276e
# ╠═0c76d6cd-2db6-45eb-9ef2-ddd9c16784a2
# ╠═6c619a0f-01c1-4cd5-a184-52c538df468b
# ╠═5d05a088-38fe-4aa1-ad17-d4ddd5139083
# ╠═8e8dbb24-db47-409b-8c78-83af0d1db26a
# ╠═3a40a84f-29f1-4f6e-b881-956bf5b56332
# ╠═fc9e1722-8ebf-4f16-91d5-10e5b9bbc4af
# ╠═1610614e-aa5d-40d2-9976-56a91667864f
# ╠═5cc461fb-34d1-4324-a21d-3e4f88905c62
# ╠═ac0a9348-fd6b-4ead-8134-74c67caf4de5
# ╠═6e26bc9c-d5a0-4e3d-9ccf-d8b20474c4c7
