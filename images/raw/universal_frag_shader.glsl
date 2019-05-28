uniform sampler2D inputImageTexture;
varying highp vec2 textureCoordinate;

void main()
{
    lowp vec4 color = texture2D(inputImageTexture, textureCoordinate);
    gl_FragColor = color;
}
