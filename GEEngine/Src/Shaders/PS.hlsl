Texture2D tex : register(t0);
SamplerState samplerLinear : register(s0);

struct PS_INPUT
{
    float4 Pos : SV_POSITION;
    float3 Normal : NORMAL;
    float3 Tangent : TANGENT;
    float2 TexCoords : TEXCOORD;
};

float4 PS(PS_INPUT input) : SV_Target0
{
    float3 normal = abs(normalize(input.Normal));
    float3 colour = normal.x * float3(1.0, 0.0, 0.0)
                  + normal.y * float3(0.0, 1.0, 0.0)
                  + normal.z * float3(1.0, 1.0, 0.0);
    return float4(colour, 1.0);
}
