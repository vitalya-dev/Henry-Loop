
// =======================================================================================
// Copyright (c) 2014, Abstraction Games B.V.
// =======================================================================================

uniform         sampler2D   uniform_Texture;
uniform lowp    vec4        uniform_Color;

// =======================================================================================

varying lowp    vec2        pass_UV;
varying lowp    vec4        pass_Color;

// =======================================================================================

void main( void )
{
    lowp vec4 textureColor = texture2D( uniform_Texture, pass_UV );
    
    gl_FragColor = textureColor * pass_Color * uniform_Color;
}
