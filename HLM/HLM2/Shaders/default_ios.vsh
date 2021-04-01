
// =======================================================================================
// Copyright (c) 2014, Abstraction Games B.V.
// =======================================================================================

uniform         mat4    uniform_Projection;
uniform         mat4    uniform_Transform;
uniform lowp    vec4    uniform_UVTransform;

// =======================================================================================

attribute       vec3    in_Position;
attribute       vec2    in_UV;
attribute       vec4    in_Color;

// =======================================================================================

varying lowp    vec2    pass_UV;
varying lowp    vec4    pass_Color;

// =======================================================================================

void main( void )
{
    gl_Position = uniform_Transform * vec4( in_Position.xy, 0, 1 );
	gl_Position = uniform_Projection * gl_Position;
    pass_UV     = in_UV * uniform_UVTransform.xy + uniform_UVTransform.zw;
    pass_Color  = in_Color;
}
