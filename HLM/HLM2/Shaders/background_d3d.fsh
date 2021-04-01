
// =======================================================================================
// Copyright (c) 2014, Abstraction Games B.V.
// =======================================================================================

// background_d3d.fsh

#pragma pack_matrix (row_major)

Texture2D   uniform_Texture;
float4 		uniform_uvBounds;
float2 		uniform_tiling;

// =======================================================================================

SamplerState sampler_Texture;

// =======================================================================================

struct VsOutput
{
	float2 pass_UV:			TEXCOORD0;	
};

// =======================================================================================

float4 main( VsOutput input  ) : COLOR0
{
    float2 newUV = float2( 	uniform_uvBounds.x + ( fmod( (input.pass_UV.x - uniform_uvBounds.x), (uniform_uvBounds.z - uniform_uvBounds.x))), 
					   		uniform_uvBounds.y + ( fmod( (input.pass_UV.y - uniform_uvBounds.y), (uniform_uvBounds.w - uniform_uvBounds.y))));

	newUV.x = lerp( clamp( input.pass_UV.x, uniform_uvBounds.x, uniform_uvBounds.z), newUV.x, uniform_tiling.x );
	newUV.y = lerp( clamp( input.pass_UV.y, uniform_uvBounds.y, uniform_uvBounds.w), newUV.y, uniform_tiling.y );
	
	float4 textureColor = uniform_Texture.Sample( sampler_Texture, newUV );
   	return textureColor;
}
