
// =======================================================================================
// Copyright (c) 2014, Abstraction Games B.V.
// =======================================================================================

#version 120

// =======================================================================================

uniform     sampler2D   uniform_Texture;
uniform     vec4        uniform_Color;
uniform		vec4		uniform_Fog;

// =======================================================================================

varying     vec2        pass_UV;

// =======================================================================================

void main( void )
{
    vec4 textureColor = texture2D( uniform_Texture, pass_UV );
    
	vec4 frag = textureColor * uniform_Color;
    gl_FragColor = vec4(mix(frag.xyz, uniform_Fog.xyz, uniform_Fog.w), frag.w);
}
