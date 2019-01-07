.class public final Lgsf;
.super Ljava/lang/Object;
.source "GLDrawer.java"


# static fields
.field private static final e:[F

.field private static final f:[F


# instance fields
.field a:I

.field b:I

.field c:I

.field final d:[F

.field private final g:Ljava/nio/FloatBuffer;

.field private final h:Ljava/nio/FloatBuffer;

.field private i:I

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 31
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lgsf;->e:[F

    .line 32
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lgsf;->f:[F

    return-void

    .line 31
    .line 32
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/16 v5, 0x20

    const/16 v4, 0x8

    const/4 v1, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lgsf;->d:[F

    .line 48
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 49
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lgsf;->g:Ljava/nio/FloatBuffer;

    .line 50
    iget-object v0, p0, Lgsf;->g:Ljava/nio/FloatBuffer;

    sget-object v2, Lgsf;->e:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 51
    iget-object v0, p0, Lgsf;->g:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 52
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 53
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lgsf;->h:Ljava/nio/FloatBuffer;

    .line 54
    iget-object v0, p0, Lgsf;->h:Ljava/nio/FloatBuffer;

    sget-object v2, Lgsf;->f:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 55
    iget-object v0, p0, Lgsf;->h:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 57
    const-string/jumbo v2, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\n\nvoid main() {\n\tgl_Position = uMVPMatrix * aPosition;\n\tvTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    const-string/jumbo v5, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nvarying highp vec2 vTextureCoord;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}"

    .line 1120
    const v0, 0x8b31

    invoke-static {v0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 1121
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 1122
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 1123
    new-array v6, v7, [I

    .line 1124
    const v2, 0x8b81

    invoke-static {v0, v2, v6, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 1125
    aget v2, v6, v3

    if-nez v2, :cond_0

    .line 1126
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v0, v3

    .line 1130
    :cond_0
    const v2, 0x8b30

    invoke-static {v2}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v2

    .line 1131
    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 1132
    invoke-static {v2}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 1133
    const v5, 0x8b81

    invoke-static {v2, v5, v6, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 1134
    aget v5, v6, v3

    if-nez v5, :cond_1

    .line 1135
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v2, v3

    .line 1139
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v5

    .line 1140
    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1141
    invoke-static {v5, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1142
    invoke-static {v5}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 57
    iput v5, p0, Lgsf;->a:I

    .line 58
    iget v0, p0, Lgsf;->a:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 59
    iget v0, p0, Lgsf;->a:I

    const-string/jumbo v2, "aPosition"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lgsf;->i:I

    .line 60
    iget v0, p0, Lgsf;->a:I

    const-string/jumbo v2, "aTextureCoord"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lgsf;->j:I

    .line 61
    iget v0, p0, Lgsf;->a:I

    const-string/jumbo v2, "uMVPMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lgsf;->b:I

    .line 62
    iget v0, p0, Lgsf;->a:I

    const-string/jumbo v2, "uTexMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lgsf;->c:I

    .line 64
    iget-object v0, p0, Lgsf;->d:[F

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 65
    iget v0, p0, Lgsf;->b:I

    iget-object v2, p0, Lgsf;->d:[F

    invoke-static {v0, v7, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 66
    iget v0, p0, Lgsf;->c:I

    iget-object v2, p0, Lgsf;->d:[F

    invoke-static {v0, v7, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 67
    iget v0, p0, Lgsf;->i:I

    const/16 v2, 0x1406

    iget-object v5, p0, Lgsf;->g:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 68
    iget v0, p0, Lgsf;->j:I

    const/16 v2, 0x1406

    iget-object v5, p0, Lgsf;->h:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 69
    iget v0, p0, Lgsf;->i:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 70
    iget v0, p0, Lgsf;->j:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 71
    return-void
.end method

.method public static a()I
    .locals 6

    .prologue
    const v5, 0x812f

    const/16 v4, 0x2600

    const/4 v1, 0x1

    const/4 v3, 0x0

    const v2, 0x8d65

    .line 100
    new-array v0, v1, [I

    .line 101
    .local v0, "tex":[I
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 102
    aget v1, v0, v3

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 103
    const/16 v1, 0x2802

    invoke-static {v2, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 105
    const/16 v1, 0x2803

    invoke-static {v2, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 107
    const/16 v1, 0x2801

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 109
    const/16 v1, 0x2800

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 111
    aget v1, v0, v3

    return v1
.end method
