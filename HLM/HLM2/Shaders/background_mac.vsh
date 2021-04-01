
// =======================================================================================
// Copyright (c) 2014, Abstraction Games B.V.
// =======================================================================================

#version 150

// =======================================================================================

uniform     mat4        uniform_Projection;
uniform		mat4		uniform_Transform;

uniform 	vec2		uniform_uvOffset;
uniform		vec4		uniform_uvBounds;
uniform		vec2		uniform_xyOffset;
uniform		vec2		uniform_tiling;

// =======================================================================================

in   vec2        in_Position;
in   vec2        in_UV;

// =======================================================================================

out     vec2        pass_UV;

// =======================================================================================

void main( void )
{
    gl_Position = uniform_Transform * vec4( in_Position.xy + uniform_xyOffset, 0, 1 );
    gl_Position = uniform_Projection * gl_Position;
    
    pass_UV     = in_UV + uniform_uvOffset;
}
