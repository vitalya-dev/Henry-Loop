
// =======================================================================================
// Copyright (c) 2014, Abstraction Games B.V.
// =======================================================================================

#version 120

// =======================================================================================

uniform     sampler2D   uniform_Texture;
uniform		vec4		uniform_Fog;

// =======================================================================================

varying     vec2        pass_UV;
varying     vec4        pass_Color;

// =======================================================================================

void main( void )
{
    vec4 textureColor = texture2D( uniform_Texture, pass_UV );
	
	vec4 frag = textureColor * pass_Color;
    gl_FragColor = vec4(mix(frag.xyz, uniform_Fog.xyz, uniform_Fog.w), frag.w);
}
