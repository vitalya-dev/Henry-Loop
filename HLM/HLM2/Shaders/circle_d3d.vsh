
// =======================================================================================
// Copyright (c) 2014, Abstraction Games B.V.
// =======================================================================================

// circle_d3d.vsh

#pragma pack_matrix (row_major)

float4x4	uniform_Projection;
float4x4	uniform_Transform;

float4 		uniform_PositionSize;
float4 		uniform_Color1;
float4 		uniform_Color2;

// =======================================================================================

struct VsInput
{
	float2 in_Position: 	POSITION0;
	float2 in_ColorMask:	COLOR0;	
};

// =======================================================================================

struct VsOutput
{
	float4 pass_Position:	POSITION0;
	float4 pass_Color:		TEXCOORD0;	
};

// =======================================================================================

VsOutput main( VsInput input )
{
	VsOutput output;

    output.pass_Position = mul( float4( ( input.in_Position.xy * uniform_PositionSize.zw ) + uniform_PositionSize.xy, 0, 1 ), uniform_Transform );
    output.pass_Position = mul( output.pass_Position, uniform_Projection );
    output.pass_Color = ( input.in_ColorMask.x * uniform_Color1 ) + ( input.in_ColorMask.y * uniform_Color2 );
    
    return output;
}
