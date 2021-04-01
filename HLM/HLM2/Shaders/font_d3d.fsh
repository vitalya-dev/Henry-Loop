
// =======================================================================================
// Copyright (c) 2014, Abstraction Games B.V.
// =======================================================================================

// font_d3d.fsh

#pragma pack_matrix (row_major)

Texture2D uniform_Texture;
float4x4 uniform_ColorMatrix;

// =======================================================================================

SamplerState sampler_Texture;

// =======================================================================================

struct VsOutput
{
	float2 pass_UV:				TEXCOORD0;
	float2 pass_ColorWeight:	TEXCOORD1;
};

// =======================================================================================

float4 main( VsOutput input ) : COLOR0
{
    float luminance = uniform_Texture.Sample( sampler_Texture, input.pass_UV ).r;
    
    float4 topColor = lerp( uniform_ColorMatrix[0], uniform_ColorMatrix[1], input.pass_ColorWeight.x );
	float4 bottomColor = lerp( uniform_ColorMatrix[3], uniform_ColorMatrix[2], input.pass_ColorWeight.x );
	float4 vertexColor = lerp( topColor, bottomColor, input.pass_ColorWeight.y );

	return float4( 1, 1, 1, luminance ) * vertexColor;
}
