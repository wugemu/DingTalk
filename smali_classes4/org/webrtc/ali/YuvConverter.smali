.class Lorg/webrtc/ali/YuvConverter;
.super Ljava/lang/Object;
.source "YuvConverter.java"


# static fields
.field private static final DEVICE_RECTANGLE:Ljava/nio/FloatBuffer;

.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 interp_tc;\n\nuniform samplerExternalOES oesTex;\nuniform vec2 xUnit;\nuniform vec4 coeffs;\n\nvoid main() {\n  gl_FragColor.r = coeffs.a + dot(coeffs.rgb,\n      texture2D(oesTex, interp_tc - 1.5 * xUnit).rgb);\n  gl_FragColor.g = coeffs.a + dot(coeffs.rgb,\n      texture2D(oesTex, interp_tc - 0.5 * xUnit).rgb);\n  gl_FragColor.b = coeffs.a + dot(coeffs.rgb,\n      texture2D(oesTex, interp_tc + 0.5 * xUnit).rgb);\n  gl_FragColor.a = coeffs.a + dot(coeffs.rgb,\n      texture2D(oesTex, interp_tc + 1.5 * xUnit).rgb);\n}\n"

.field private static final TEXTURE_RECTANGLE:Ljava/nio/FloatBuffer;

.field private static final VERTEX_SHADER:Ljava/lang/String; = "varying vec2 interp_tc;\nattribute vec4 in_pos;\nattribute vec4 in_tc;\n\nuniform mat4 texMatrix;\n\nvoid main() {\n    gl_Position = in_pos;\n    interp_tc = (texMatrix * in_tc).xy;\n}\n"


# instance fields
.field private final coeffsLoc:I

.field private released:Z

.field private final shader:Lorg/webrtc/ali/GlShader;

.field private final texMatrixLoc:I

.field private final textureFrameBuffer:Lorg/webrtc/ali/GlTextureFrameBuffer;

.field private final threadChecker:Lorg/webrtc/ali/ThreadUtils$ThreadChecker;

.field private final xUnitLoc:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 25
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lorg/webrtc/ali/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lorg/webrtc/ali/YuvConverter;->DEVICE_RECTANGLE:Ljava/nio/FloatBuffer;

    .line 33
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Lorg/webrtc/ali/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lorg/webrtc/ali/YuvConverter;->TEXTURE_RECTANGLE:Ljava/nio/FloatBuffer;

    return-void

    .line 25
    .line 33
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
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Lorg/webrtc/ali/ThreadUtils$ThreadChecker;

    invoke-direct {v0}, Lorg/webrtc/ali/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v0, p0, Lorg/webrtc/ali/YuvConverter;->threadChecker:Lorg/webrtc/ali/ThreadUtils$ThreadChecker;

    .line 89
    iput-boolean v3, p0, Lorg/webrtc/ali/YuvConverter;->released:Z

    .line 95
    iget-object v0, p0, Lorg/webrtc/ali/YuvConverter;->threadChecker:Lorg/webrtc/ali/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/webrtc/ali/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 96
    new-instance v0, Lorg/webrtc/ali/GlTextureFrameBuffer;

    const/16 v1, 0x1908

    invoke-direct {v0, v1}, Lorg/webrtc/ali/GlTextureFrameBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/webrtc/ali/YuvConverter;->textureFrameBuffer:Lorg/webrtc/ali/GlTextureFrameBuffer;

    .line 97
    new-instance v0, Lorg/webrtc/ali/GlShader;

    const-string/jumbo v1, "varying vec2 interp_tc;\nattribute vec4 in_pos;\nattribute vec4 in_tc;\n\nuniform mat4 texMatrix;\n\nvoid main() {\n    gl_Position = in_pos;\n    interp_tc = (texMatrix * in_tc).xy;\n}\n"

    const-string/jumbo v2, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 interp_tc;\n\nuniform samplerExternalOES oesTex;\nuniform vec2 xUnit;\nuniform vec4 coeffs;\n\nvoid main() {\n  gl_FragColor.r = coeffs.a + dot(coeffs.rgb,\n      texture2D(oesTex, interp_tc - 1.5 * xUnit).rgb);\n  gl_FragColor.g = coeffs.a + dot(coeffs.rgb,\n      texture2D(oesTex, interp_tc - 0.5 * xUnit).rgb);\n  gl_FragColor.b = coeffs.a + dot(coeffs.rgb,\n      texture2D(oesTex, interp_tc + 0.5 * xUnit).rgb);\n  gl_FragColor.a = coeffs.a + dot(coeffs.rgb,\n      texture2D(oesTex, interp_tc + 1.5 * xUnit).rgb);\n}\n"

    invoke-direct {v0, v1, v2}, Lorg/webrtc/ali/GlShader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/webrtc/ali/YuvConverter;->shader:Lorg/webrtc/ali/GlShader;

    .line 98
    iget-object v0, p0, Lorg/webrtc/ali/YuvConverter;->shader:Lorg/webrtc/ali/GlShader;

    invoke-virtual {v0}, Lorg/webrtc/ali/GlShader;->useProgram()V

    .line 99
    iget-object v0, p0, Lorg/webrtc/ali/YuvConverter;->shader:Lorg/webrtc/ali/GlShader;

    const-string/jumbo v1, "texMatrix"

    invoke-virtual {v0, v1}, Lorg/webrtc/ali/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/webrtc/ali/YuvConverter;->texMatrixLoc:I

    .line 100
    iget-object v0, p0, Lorg/webrtc/ali/YuvConverter;->shader:Lorg/webrtc/ali/GlShader;

    const-string/jumbo v1, "xUnit"

    invoke-virtual {v0, v1}, Lorg/webrtc/ali/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/webrtc/ali/YuvConverter;->xUnitLoc:I

    .line 101
    iget-object v0, p0, Lorg/webrtc/ali/YuvConverter;->shader:Lorg/webrtc/ali/GlShader;

    const-string/jumbo v1, "coeffs"

    invoke-virtual {v0, v1}, Lorg/webrtc/ali/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/webrtc/ali/YuvConverter;->coeffsLoc:I

    .line 102
    iget-object v0, p0, Lorg/webrtc/ali/YuvConverter;->shader:Lorg/webrtc/ali/GlShader;

    const-string/jumbo v1, "oesTex"

    invoke-virtual {v0, v1}, Lorg/webrtc/ali/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 103
    const-string/jumbo v0, "Initialize fragment shader uniform values."

    invoke-static {v0}, Lorg/webrtc/ali/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lorg/webrtc/ali/YuvConverter;->shader:Lorg/webrtc/ali/GlShader;

    const-string/jumbo v1, "in_pos"

    sget-object v2, Lorg/webrtc/ali/YuvConverter;->DEVICE_RECTANGLE:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1, v4, v2}, Lorg/webrtc/ali/GlShader;->setVertexAttribArray(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 108
    iget-object v0, p0, Lorg/webrtc/ali/YuvConverter;->shader:Lorg/webrtc/ali/GlShader;

    const-string/jumbo v1, "in_tc"

    sget-object v2, Lorg/webrtc/ali/YuvConverter;->TEXTURE_RECTANGLE:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1, v4, v2}, Lorg/webrtc/ali/GlShader;->setVertexAttribArray(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 109
    return-void
.end method


# virtual methods
.method public convert(Ljava/nio/ByteBuffer;IIII[F)V
    .locals 12
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "stride"    # I
    .param p5, "srcTextureId"    # I
    .param p6, "transformMatrix"    # [F

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 113
    iget-object v1, p0, Lorg/webrtc/ali/YuvConverter;->threadChecker:Lorg/webrtc/ali/ThreadUtils$ThreadChecker;

    invoke-virtual {v1}, Lorg/webrtc/ali/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 114
    iget-boolean v1, p0, Lorg/webrtc/ali/YuvConverter;->released:Z

    if-eqz v1, :cond_0

    .line 115
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "YuvConverter.convert called on released object"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    :cond_0
    rem-int/lit8 v1, p4, 0x8

    if-eqz v1, :cond_1

    .line 148
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid stride, must be a multiple of 8"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :cond_1
    move/from16 v0, p4

    if-ge v0, p2, :cond_2

    .line 151
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid stride, must >= width"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    :cond_2
    add-int/lit8 v1, p2, 0x3

    div-int/lit8 v11, v1, 0x4

    .line 155
    .local v11, "y_width":I
    add-int/lit8 v1, p2, 0x7

    div-int/lit8 v10, v1, 0x8

    .line 156
    .local v10, "uv_width":I
    add-int/lit8 v1, p3, 0x1

    div-int/lit8 v9, v1, 0x2

    .line 157
    .local v9, "uv_height":I
    add-int v4, p3, v9

    .line 158
    .local v4, "total_height":I
    mul-int v8, p4, v4

    .line 160
    .local v8, "size":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v1, v8, :cond_3

    .line 161
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "YuvConverter.convert called with too small buffer"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    :cond_3
    invoke-static {}, Lorg/webrtc/ali/RendererCommon;->verticalFlipMatrix()[F

    move-result-object v1

    move-object/from16 v0, p6

    invoke-static {v0, v1}, Lorg/webrtc/ali/RendererCommon;->multiplyMatrices([F[F)[F

    move-result-object p6

    .line 168
    div-int/lit8 v3, p4, 0x4

    .line 170
    .local v3, "frameBufferWidth":I
    iget-object v1, p0, Lorg/webrtc/ali/YuvConverter;->textureFrameBuffer:Lorg/webrtc/ali/GlTextureFrameBuffer;

    invoke-virtual {v1, v3, v4}, Lorg/webrtc/ali/GlTextureFrameBuffer;->setSize(II)V

    .line 173
    const v1, 0x8d40

    iget-object v2, p0, Lorg/webrtc/ali/YuvConverter;->textureFrameBuffer:Lorg/webrtc/ali/GlTextureFrameBuffer;

    invoke-virtual {v2}, Lorg/webrtc/ali/GlTextureFrameBuffer;->getFrameBufferId()I

    move-result v2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 174
    const-string/jumbo v1, "glBindFramebuffer"

    invoke-static {v1}, Lorg/webrtc/ali/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 176
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 177
    const v1, 0x8d65

    move/from16 v0, p5

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 178
    iget v1, p0, Lorg/webrtc/ali/YuvConverter;->texMatrixLoc:I

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p6

    invoke-static {v1, v2, v5, v0, v6}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 181
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2, v11, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 183
    iget v1, p0, Lorg/webrtc/ali/YuvConverter;->xUnitLoc:I

    const/4 v2, 0x0

    aget v2, p6, v2

    int-to-float v5, p2

    div-float/2addr v2, v5

    const/4 v5, 0x1

    aget v5, p6, v5

    int-to-float v6, p2

    div-float/2addr v5, v6

    invoke-static {v1, v2, v5}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 187
    iget v1, p0, Lorg/webrtc/ali/YuvConverter;->coeffsLoc:I

    const v2, 0x3e991687    # 0.299f

    const v5, 0x3f1645a2    # 0.587f

    const v6, 0x3de978d5    # 0.114f

    const/4 v7, 0x0

    invoke-static {v1, v2, v5, v6, v7}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 188
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v5, 0x4

    invoke-static {v1, v2, v5}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 191
    const/4 v1, 0x0

    invoke-static {v1, p3, v10, v9}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 193
    iget v1, p0, Lorg/webrtc/ali/YuvConverter;->xUnitLoc:I

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v5, 0x0

    aget v5, p6, v5

    mul-float/2addr v2, v5

    int-to-float v5, p2

    div-float/2addr v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x1

    aget v6, p6, v6

    mul-float/2addr v5, v6

    int-to-float v6, p2

    div-float/2addr v5, v6

    invoke-static {v1, v2, v5}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 195
    iget v1, p0, Lorg/webrtc/ali/YuvConverter;->coeffsLoc:I

    const v2, -0x41d2f1aa    # -0.169f

    const v5, -0x4156872b    # -0.331f

    const v6, 0x3eff7cee    # 0.499f

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-static {v1, v2, v5, v6, v7}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 196
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v5, 0x4

    invoke-static {v1, v2, v5}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 199
    div-int/lit8 v1, p4, 0x8

    invoke-static {v1, p3, v10, v9}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 200
    iget v1, p0, Lorg/webrtc/ali/YuvConverter;->coeffsLoc:I

    const v2, 0x3eff7cee    # 0.499f

    const v5, -0x4129fbe7    # -0.418f

    const v6, -0x42597f63    # -0.0813f

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-static {v1, v2, v5, v6, v7}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 201
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v5, 0x4

    invoke-static {v1, v2, v5}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 203
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move-object v7, p1

    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 206
    const-string/jumbo v1, "YuvConverter.convert"

    invoke-static {v1}, Lorg/webrtc/ali/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 209
    const v1, 0x8d40

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 210
    const/16 v1, 0xde1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 214
    const v1, 0x8d65

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 215
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/webrtc/ali/YuvConverter;->threadChecker:Lorg/webrtc/ali/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/webrtc/ali/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/ali/YuvConverter;->released:Z

    .line 220
    iget-object v0, p0, Lorg/webrtc/ali/YuvConverter;->shader:Lorg/webrtc/ali/GlShader;

    invoke-virtual {v0}, Lorg/webrtc/ali/GlShader;->release()V

    .line 221
    iget-object v0, p0, Lorg/webrtc/ali/YuvConverter;->textureFrameBuffer:Lorg/webrtc/ali/GlTextureFrameBuffer;

    invoke-virtual {v0}, Lorg/webrtc/ali/GlTextureFrameBuffer;->release()V

    .line 222
    return-void
.end method
