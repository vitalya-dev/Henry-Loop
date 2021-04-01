
// =======================================================================================
// Copyright (c) 2014, Abstraction Games B.V.
// =======================================================================================

// surface_d3d.fsh

#pragma pack_matrix (row_major)

Texture2D	uniform_Texture;
float4 		uniform_Color;
float4 		uniform_OutlineColor;

// =======================================================================================

SamplerState sampler_Texture;

// =======================================================================================

struct VsOutput
{
	float2 pass_UV:		TEXCOORD0;
	float2 pass_UV_L:	TEXCOORD1;
	float2 pass_UV_R:	TEXCOORD2;
	float2 pass_UV_T:	TEXCOORD3;
	float2 pass_UV_B:	TEXCOORD4;
};

// =======================================================================================

float4 main( VsOutput input ) : COLOR0
{
	float4 textureColor = uniform_Texture.Sample( sampler_Texture, input.pass_UV ) * uniform_Color;

	float outline = uniform_Texture.Sample( sampler_Texture, input.pass_UV_L ).a;
	outline += uniform_Texture.Sample( sampler_Texture, input.pass_UV_R ).a;
	outline += uniform_Texture.Sample( sampler_Texture, input.pass_UV_T ).a;
	outline += uniform_Texture.Sample( sampler_Texture, input.pass_UV_B ).a;

	textureColor += uniform_OutlineColor * clamp( outline - textureColor.a, 0.0f, 1.0f );

	return textureColor;
}
