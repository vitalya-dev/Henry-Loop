
// =======================================================================================
// Copyright (c) 2014, Abstraction Games B.V.
// =======================================================================================

// surface_d3d.fsh

#pragma pack_matrix (row_major)

Texture2D	uniform_Texture;
float4 		uniform_Color;

// =======================================================================================

SamplerState sampler_Texture;

// =======================================================================================

struct VsOutput
{
	float2 pass_UV:			TEXCOORD0;	
};

// =======================================================================================

float4 main( VsOutput input ) : COLOR0
{
	float4 textureColor = uniform_Texture.Sample( sampler_Texture, input.pass_UV );
	
	return textureColor * uniform_Color;    
}
