
// =======================================================================================
// Copyright (c) 2014, Abstraction Games B.V.
// =======================================================================================

// shape_d3d.fsh

#pragma pack_matrix (row_major)

struct VsOutput
{
	float4 pass_Color:		COLOR0;
};

// =======================================================================================

float4 main( VsOutput input ) : COLOR0
{
    return input.pass_Color;
}
