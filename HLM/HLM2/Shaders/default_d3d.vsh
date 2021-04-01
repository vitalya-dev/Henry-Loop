
// =======================================================================================
// Copyright (c) 2014, Abstraction Games B.V.
// =======================================================================================

// default_d3d.vsh

#pragma pack_matrix (row_major)

float4x4        uniform_Projection;
float4x4        uniform_Transform;
float2 uniform_PixelOffset;

// =======================================================================================

struct VsInput
{
    float3 in_Position:		POSITION0;
    float2 in_UV:			TEXCOORD0;
    float4 in_Color:		COLOR0;
};

// =======================================================================================

struct VsOutput
{
    float4  pass_Position:	POSITION0;
	float2	pass_UV:		TEXCOORD0;
    float4  pass_Color:		COLOR0;
};

// =======================================================================================

VsOutput main( const VsInput input )
{
    VsOutput output;

	float4 position = mul( float4( input.in_Position.xyz, 1 ), uniform_Transform );
    output.pass_Position = mul( position, uniform_Projection );

	output.pass_UV = input.in_UV;

	output.pass_Color = input.in_Color;
    
    return output;
}
