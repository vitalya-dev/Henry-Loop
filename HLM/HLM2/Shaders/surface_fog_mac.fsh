
// =======================================================================================
// Copyright (c) 2014, Abstraction Games B.V.
// =======================================================================================

#version 150

// =======================================================================================

uniform     sampler2D   uniform_Texture;
uniform     vec4        uniform_Color;
uniform		vec4		uniform_Fog;

// =======================================================================================

in     vec2        pass_UV;

// =======================================================================================

out     vec4        out_FragColor;

// =======================================================================================

void main( void )
{
    vec4 textureColor = texture( uniform_Texture, pass_UV );
    
	vec4 frag = textureColor * uniform_Color;
    out_FragColor = vec4(mix(frag.xyz, uniform_Fog.xyz, uniform_Fog.w), frag.w);
}
