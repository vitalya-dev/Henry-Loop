
// =======================================================================================
// Copyright (c) 2014, Abstraction Games B.V.
// =======================================================================================

#version 120

// =======================================================================================

uniform     sampler2D   uniform_Texture;
uniform     vec4        uniform_Color;
uniform		vec4 		uniform_OutlineColor;

// =======================================================================================

varying     vec2	pass_UV;
varying     vec2	pass_UV_L;
varying     vec2	pass_UV_R;
varying     vec2	pass_UV_T;
varying     vec2	pass_UV_B;

// =======================================================================================

void main( void )
{
    vec4 textureColor = texture2D( uniform_Texture, pass_UV ) * uniform_Color;

	float outline = texture2D( uniform_Texture, pass_UV_L ).a;
	outline += texture2D( uniform_Texture, pass_UV_R ).a;
	outline += texture2D( uniform_Texture, pass_UV_T ).a;
	outline += texture2D( uniform_Texture, pass_UV_B ).a;

	textureColor += uniform_OutlineColor * clamp( outline - textureColor.a, 0.0f, 1.0f );

	gl_FragColor = textureColor;
}
