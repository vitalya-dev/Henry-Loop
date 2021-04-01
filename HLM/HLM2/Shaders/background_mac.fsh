
// =======================================================================================
// Copyright (c) 2014, Abstraction Games B.V.
// =======================================================================================

#version 150

// =======================================================================================

uniform     sampler2D   uniform_Texture;
uniform 	vec2		uniform_uvOffset;
uniform		vec4		uniform_uvBounds;
uniform		vec2		uniform_xyOffset;
uniform		vec2		uniform_tiling;

// =======================================================================================

in     vec2        pass_UV;

// =======================================================================================

out     vec4        out_FragColor;

// =======================================================================================

void main( void )
{
    vec2 newUV = vec2( uniform_uvBounds.x + (mod((pass_UV.x - uniform_uvBounds.x), (uniform_uvBounds.z - uniform_uvBounds.x))),
                      uniform_uvBounds.y + (mod((pass_UV.y - uniform_uvBounds.y), (uniform_uvBounds.w - uniform_uvBounds.y))));
    
    newUV.x = mix( clamp(pass_UV.x, uniform_uvBounds.x, uniform_uvBounds.z), newUV.x, uniform_tiling.x );
    newUV.y = mix( clamp(pass_UV.y, uniform_uvBounds.y, uniform_uvBounds.w), newUV.y, uniform_tiling.y );
    
    vec4 textureColor = texture( uniform_Texture, newUV );
   	out_FragColor = textureColor;
}
