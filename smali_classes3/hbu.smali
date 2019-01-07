.class public final Lhbu;
.super Ljava/lang/Object;
.source "util.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:[F

.field public static d:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 12
    const-string/jumbo v0, "attribute vec4 vPosition;    \nattribute vec2 a_texCoord;   \nvarying vec2 tc;             \nvoid main()                  \n{                            \n   gl_Position = vPosition;  \n   tc = a_texCoord;          \n}                            \n"

    sput-object v0, Lhbu;->a:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, "varying lowp vec2 tc;      \nuniform sampler2D SamplerY;\nuniform sampler2D SamplerU;\nuniform sampler2D SamplerV;\nvoid main(void)            \n{                          \nmediump vec3 yuv;          \nlowp vec3 rgb;             \nyuv.x = texture2D(SamplerY, tc).r;     \nyuv.y = texture2D(SamplerU, tc).r - 0.5;\nyuv.z = texture2D(SamplerV, tc).r - 0.5;\nrgb = mat3(1.0, 1.0, 1.0, 0.0, -0.343, 1.765, 1.4, -0.711, 0.0) * yuv;\ngl_FragColor = vec4(rgb, 1);\n}                          \n"

    sput-object v0, Lhbu;->b:Ljava/lang/String;

    .line 70
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lhbu;->c:[F

    .line 76
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lhbu;->d:[F

    return-void

    .line 70
    .line 76
    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 6

    .prologue
    .line 84
    const v4, 0x8b31

    sget-object v5, Lhbu;->a:Ljava/lang/String;

    invoke-static {v4, v5}, Lhbu;->a(ILjava/lang/String;)I

    move-result v3

    .line 85
    .local v3, "vertexShader":I
    const v4, 0x8b30

    sget-object v5, Lhbu;->b:Ljava/lang/String;

    invoke-static {v4, v5}, Lhbu;->a(ILjava/lang/String;)I

    move-result v0

    .line 88
    .local v0, "fragmentShader":I
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 90
    .local v2, "mProgram":I
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 91
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 92
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 95
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    .line 96
    .local v1, "linked":Ljava/nio/IntBuffer;
    const v4, 0x8b82

    invoke-static {v2, v4, v1}, Landroid/opengl/GLES20;->glGetProgramiv(IILjava/nio/IntBuffer;)V

    .line 98
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    if-nez v4, :cond_0

    .line 99
    const/4 v2, -0x1

    .line 101
    .end local v2    # "mProgram":I
    :cond_0
    return v2
.end method

.method private static a(ILjava/lang/String;)I
    .locals 4
    .param p0, "type"    # I
    .param p1, "shaderCode"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 110
    .local v1, "shader":I
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 111
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 114
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 115
    .local v0, "compiled":Ljava/nio/IntBuffer;
    const v3, 0x8b81

    invoke-static {v1, v3, v0}, Landroid/opengl/GLES20;->glGetShaderiv(IILjava/nio/IntBuffer;)V

    .line 116
    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 119
    .end local v1    # "shader":I
    :cond_0
    return v1
.end method
