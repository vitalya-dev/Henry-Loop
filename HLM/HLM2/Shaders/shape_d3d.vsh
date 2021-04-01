
// =======================================================================================
// Copyright (c) 2014, Abstraction Games B.V.
// =======================================================================================

// shape_d3d.vsh

#pragma pack_matrix (row_major)

float4x4 uniform_Projection;
float4x4 uniform_Transform;

// =======================================================================================

struct VsInput
{
	float2 in_Position:	POSITION0;
	float4 in_Color:	COLOR0;
};

// =======================================================================================

struct VsOutput
{
	float4 pass_Position:	POSITION0;
	float4 pass_Color:		COLOR0;
};

// =======================================================================================

VsOutput main( VsInput input )
{
	VsOutput output;
	
	output.pass_Position = mul( float4( input.in_Position.xy, 0, 1 ), uniform_Transform );
	output.pass_Position = mul( output.pass_Position, uniform_Projection );
	output.pass_Color = input.in_Color;    
    
    return output;
}
