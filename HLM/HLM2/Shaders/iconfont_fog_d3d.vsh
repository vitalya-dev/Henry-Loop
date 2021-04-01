// =======================================================================================
// Copyright (c) 2014, Abstraction Games B.V.
// =======================================================================================

// iconfont_d3d.vsh

#pragma pack_matrix (row_major)

float4x4 uniform_Projection;
float4x4 uniform_FontTransform;

// =======================================================================================

struct VsInput
{
	float2 in_Position: POSITION0;
	float2 in_UV: 		TEXCOORD0;
};

// =======================================================================================

struct VsOutput
{
	float4 pass_Position:		POSITION0;	
	float2 pass_UV:				TEXCOORD0;
};

// =======================================================================================

VsOutput main( VsInput input )
{
	VsOutput output;
	
    output.pass_Position = mul( float4( input.in_Position.xy, 0, 1 ),  uniform_FontTransform );
    output.pass_Position = mul( output.pass_Position, uniform_Projection );
    output.pass_UV = input.in_UV;    
    
    return output;
}