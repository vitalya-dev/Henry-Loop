
// =======================================================================================
// Copyright (c) 2014, Abstraction Games B.V.
// =======================================================================================

// surface_d3d.vsh

#pragma pack_matrix (row_major)

float4x4 uniform_Projection;
float4x4 uniform_Transform;

float4 uniform_TextureCoords;
float4 uniform_PositionSize;
float2 uniform_OutlineWidth;

// =======================================================================================

struct VsInput
{
	float2 in_Position:		POSITION0;
	float2 in_UV:			TEXCOORD0;	
};

// =======================================================================================

struct VsOutput
{
	float4 pass_Position:	POSITION0;
	float2 pass_UV:			TEXCOORD0;
	float2 pass_UV_L:		TEXCOORD1;
	float2 pass_UV_R:		TEXCOORD2;
	float2 pass_UV_T:		TEXCOORD3;
	float2 pass_UV_B:		TEXCOORD4;
};

// =======================================================================================

VsOutput main( VsInput input )
{
	VsOutput output;
	output.pass_Position = mul( float4( ( input.in_Position.xy * uniform_PositionSize.zw ) + uniform_PositionSize.xy, 0, 1 ), uniform_Transform );
    output.pass_Position = mul( output.pass_Position, uniform_Projection );

    output.pass_UV = input.in_UV * uniform_TextureCoords.zw + uniform_TextureCoords.xy; 
    output.pass_UV_L = ( output.pass_UV - float2( uniform_OutlineWidth.x, 0 ) );
    output.pass_UV_R = ( output.pass_UV + float2( uniform_OutlineWidth.x, 0 ) );
    output.pass_UV_T = ( output.pass_UV - float2( 0, uniform_OutlineWidth.y ) );
    output.pass_UV_B = ( output.pass_UV + float2( 0, uniform_OutlineWidth.y ) );
    
    return output;
}
