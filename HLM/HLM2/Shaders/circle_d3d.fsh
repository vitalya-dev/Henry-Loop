
// =======================================================================================
// Copyright (c) 2014, Abstraction Games B.V.
// =======================================================================================

// circle_d3d.fsh

#pragma pack_matrix (row_major)

struct VsOutput
{
	float4 pass_Color:		TEXCOORD0;	
};

// =======================================================================================

float4 main( VsOutput input ) : COLOR0
{
    return input.pass_Color;
}
