
// =======================================================================================
// Copyright (c) 2014, Abstraction Games B.V.
// =======================================================================================

#version 150

// =======================================================================================

uniform     mat4        uniform_Projection;
uniform     mat4        uniform_Transform;

// =======================================================================================

in   vec3        in_Position;
in   vec2        in_UV;
in	 vec4		in_Color;

// =======================================================================================

out     vec2        pass_UV;
out		vec4		pass_Color;

// =======================================================================================

void main( void )
{
	gl_Position = uniform_Transform * vec4( in_Position.xy, 0, 1 );
    gl_Position = uniform_Projection * gl_Position;
    pass_UV     = in_UV;
    pass_Color 	= in_Color;
}
