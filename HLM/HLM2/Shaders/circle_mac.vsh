
// =======================================================================================
// Copyright (c) 2014, Abstraction Games B.V.
// =======================================================================================

#version 150

// =======================================================================================

uniform     mat4        uniform_Projection;
uniform		mat4		uniform_Transform;

uniform		vec4		uniform_PositionSize;
uniform 	vec4		uniform_Color1;
uniform 	vec4		uniform_Color2;

// =======================================================================================

in   vec2        in_Position;
in   vec2        in_ColorMask;

// =======================================================================================

out		vec4		pass_Color;

// =======================================================================================

void main( void )
{
    gl_Position = uniform_Transform * vec4( ( in_Position.xy * uniform_PositionSize.zw ) + uniform_PositionSize.xy, 0, 1 );
    gl_Position = uniform_Projection * gl_Position;
    
    pass_Color 	= ( in_ColorMask.x * uniform_Color1 ) + ( in_ColorMask.y * uniform_Color2 );
}
