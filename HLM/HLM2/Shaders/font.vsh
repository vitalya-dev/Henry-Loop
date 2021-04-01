
// =======================================================================================
// Copyright (c) 2014, Abstraction Games B.V.
// =======================================================================================

#version 120

// =======================================================================================

uniform     mat4        uniform_Projection;
uniform		mat4		uniform_ColorMatrix;
uniform 	mat4		uniform_FontTransform;

// =======================================================================================

attribute   vec2        in_Position;
attribute   vec2        in_UV;
attribute 	vec2		in_Color;

// =======================================================================================

varying     vec2        pass_UV;
varying 	vec2		pass_ColorWeight;

// =======================================================================================

void main( void )
{
    gl_Position = uniform_FontTransform * vec4( in_Position.xy, 0, 1 );
    gl_Position = uniform_Projection * gl_Position;

    pass_UV     = in_UV;
    pass_ColorWeight = in_Color;
}
