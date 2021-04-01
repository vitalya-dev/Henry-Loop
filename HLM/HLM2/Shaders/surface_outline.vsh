
// =======================================================================================
// Copyright (c) 2014, Abstraction Games B.V.
// =======================================================================================

#version 120

// =======================================================================================

uniform     mat4        uniform_Projection;
uniform     mat4        uniform_Transform;

uniform		vec4		uniform_TextureCoords;
uniform		vec4		uniform_PositionSize;
uniform		vec2		uniform_OutlineWidth;

// =======================================================================================

attribute   vec2        in_Position;
attribute   vec2        in_UV;

// =======================================================================================

varying     vec2	pass_UV;
varying     vec2	pass_UV_L;
varying     vec2	pass_UV_R;
varying     vec2	pass_UV_T;
varying     vec2	pass_UV_B;

// =======================================================================================

void main( void )
{
    gl_Position = uniform_Transform * vec4( ( in_Position.xy * uniform_PositionSize.zw ) + uniform_PositionSize.xy, 0, 1 );
    gl_Position = uniform_Projection * gl_Position;
    
	pass_UV = in_UV * uniform_TextureCoords.zw + uniform_TextureCoords.xy; 
    pass_UV_L = ( pass_UV - vec2( uniform_OutlineWidth.x, 0 ) );
    pass_UV_R = ( pass_UV + vec2( uniform_OutlineWidth.x, 0 ) );
    pass_UV_T = ( pass_UV - vec2( 0, uniform_OutlineWidth.y ) );
    pass_UV_B = ( pass_UV + vec2( 0, uniform_OutlineWidth.y ) );
}
