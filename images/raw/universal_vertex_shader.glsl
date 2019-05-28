attribute highp vec2 posAttr;
attribute highp vec2 texCoordAttr;
varying highp vec2 textureCoordinate;

void main()
{
    textureCoordinate = texCoordAttr;
    gl_Position = vec4(posAttr, 0, 1);
}
