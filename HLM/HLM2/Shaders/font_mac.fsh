
// =======================================================================================
// Copyright (c) 2014, Abstraction Games B.V.
// =======================================================================================

#version 150

// =======================================================================================

uniform     sampler2D   uniform_Texture;
uniform		mat4		uniform_ColorMatrix;

// =======================================================================================

in     vec2        pass_UV;
in 	vec2		pass_ColorWeight;

// =======================================================================================

out     vec4        out_FragColor;

// =======================================================================================

void main( void )
{
    float luminance = texture( uniform_Texture, pass_UV ).r;
    
    vec4 topColor = mix( uniform_ColorMatrix[ 0 ], uniform_ColorMatrix[ 1 ], pass_ColorWeight.x );
    vec4 bottomColor = mix( uniform_ColorMatrix[ 3 ], uniform_ColorMatrix[ 2 ], pass_ColorWeight.x );
    vec4 vertexColor = mix( topColor, bottomColor, pass_ColorWeight.y );
    
    out_FragColor = vec4( 1, 1, 1, luminance ) * vertexColor;
}
