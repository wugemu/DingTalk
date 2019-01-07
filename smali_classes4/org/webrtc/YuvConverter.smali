.class Lorg/webrtc/YuvConverter;
.super Ljava/lang/Object;
.source "YuvConverter.java"


# static fields
.field private static final DEVICE_RECTANGLE:Ljava/nio/FloatBuffer;

.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 interp_tc;\n\nuniform samplerExternalOES oesTex;\nuniform vec2 xUnit;\nuniform vec4 coeffs;\n\nvoid main() {\n  gl_FragColor.r = coeffs.a + dot(coeffs.rgb,\n      texture2D(oesTex, interp_tc - 1.5 * xUnit).rgb);\n  gl_FragColor.g = coeffs.a + dot(coeffs.rgb,\n      texture2D(oesTex, interp_tc - 0.5 * xUnit).rgb);\n  gl_FragColor.b = coeffs.a + dot(coeffs.rgb,\n      texture2D(oesTex, interp_tc + 0.5 * xUnit).rgb);\n  gl_FragColor.a = coeffs.a + dot(coeffs.rgb,\n      texture2D(oesTex, interp_tc + 1.5 * xUnit).rgb);\n}\n"

.field private static final TEXTURE_RECTANGLE:Ljava/nio/FloatBuffer;

.field private static final VERTEX_SHADER:Ljava/lang/String; = "varying vec2 interp_tc;\nattribute vec4 in_pos;\nattribute vec4 in_tc;\n\nuniform mat4 texMatrix;\n\nvoid main() {\n    gl_Position = in_pos;\n    interp_tc = (texMatrix * in_tc).xy;\n}\n"


# instance fields
.field private final coeffsLoc:I

.field private frameBufferHeight:I

.field private final frameBufferId:I

.field private frameBufferWidth:I

.field private final frameTextureId:I

.field private released:Z

.field private final shader:Lorg/webrtc/GlShader;

.field private final texMatrixLoc:I

.field private final threadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

.field private final xUnitLoc:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 26
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lorg/webrtc/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lorg/webrtc/YuvConverter;->DEVICE_RECTANGLE:Ljava/nio/FloatBuffer;

    .line 34
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Lorg/webrtc/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lorg/webrtc/YuvConverter;->TEXTURE_RECTANGLE:Ljava/nio/FloatBuffer;

    return-void

    .line 26
    .line 34
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
    .locals 7

    .prologue
    const/16 v6, 0xde1

    const/4 v5, 0x2

    const/4 v2, 0x1

    const v3, 0x8d40

    const/4 v4, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v1, Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-direct {v1}, Lorg/webrtc/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v1, p0, Lorg/webrtc/YuvConverter;->threadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    .line 93
    iput-boolean v4, p0, Lorg/webrtc/YuvConverter;->released:Z

    .line 99
    iget-object v1, p0, Lorg/webrtc/YuvConverter;->threadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v1}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 100
    invoke-static {v6}, Lorg/webrtc/GlUtil;->generateTexture(I)I

    move-result v1

    iput v1, p0, Lorg/webrtc/YuvConverter;->frameTextureId:I

    .line 101
    iput v4, p0, Lorg/webrtc/YuvConverter;->frameBufferWidth:I

    .line 102
    iput v4, p0, Lorg/webrtc/YuvConverter;->frameBufferHeight:I

    .line 105
    new-array v0, v2, [I

    .line 106
    .local v0, "frameBuffers":[I
    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 107
    aget v1, v0, v4

    iput v1, p0, Lorg/webrtc/YuvConverter;->frameBufferId:I

    .line 108
    iget v1, p0, Lorg/webrtc/YuvConverter;->frameBufferId:I

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 109
    const-string/jumbo v1, "Generate framebuffer"

    invoke-static {v1}, Lorg/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 112
    const v1, 0x8ce0

    iget v2, p0, Lorg/webrtc/YuvConverter;->frameTextureId:I

    invoke-static {v3, v1, v6, v2, v4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 114
    const-string/jumbo v1, "Attach texture to framebuffer"

    invoke-static {v1}, Lorg/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 117
    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 119
    new-instance v1, Lorg/webrtc/GlShader;

    const-string/jumbo v2, "varying vec2 interp_tc;\nattribute vec4 in_pos;\nattribute vec4 in_tc;\n\nuniform mat4 texMatrix;\n\nvoid main() {\n    gl_Position = in_pos;\n    interp_tc = (texMatrix * in_tc).xy;\n}\n"

    const-string/jumbo v3, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 interp_tc;\n\nuniform samplerExternalOES oesTex;\nuniform vec2 xUnit;\nuniform vec4 coeffs;\n\nvoid main() {\n  gl_FragColor.r = coeffs.a + dot(coeffs.rgb,\n      texture2D(oesTex, interp_tc - 1.5 * xUnit).rgb);\n  gl_FragColor.g = coeffs.a + dot(coeffs.rgb,\n      texture2D(oesTex, interp_tc - 0.5 * xUnit).rgb);\n  gl_FragColor.b = coeffs.a + dot(coeffs.rgb,\n      texture2D(oesTex, interp_tc + 0.5 * xUnit).rgb);\n  gl_FragColor.a = coeffs.a + dot(coeffs.rgb,\n      texture2D(oesTex, interp_tc + 1.5 * xUnit).rgb);\n}\n"

    invoke-direct {v1, v2, v3}, Lorg/webrtc/GlShader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/webrtc/YuvConverter;->shader:Lorg/webrtc/GlShader;

    .line 120
    iget-object v1, p0, Lorg/webrtc/YuvConverter;->shader:Lorg/webrtc/GlShader;

    invoke-virtual {v1}, Lorg/webrtc/GlShader;->useProgram()V

    .line 121
    iget-object v1, p0, Lorg/webrtc/YuvConverter;->shader:Lorg/webrtc/GlShader;

    const-string/jumbo v2, "texMatrix"

    invoke-virtual {v1, v2}, Lorg/webrtc/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/webrtc/YuvConverter;->texMatrixLoc:I

    .line 122
    iget-object v1, p0, Lorg/webrtc/YuvConverter;->shader:Lorg/webrtc/GlShader;

    const-string/jumbo v2, "xUnit"

    invoke-virtual {v1, v2}, Lorg/webrtc/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/webrtc/YuvConverter;->xUnitLoc:I

    .line 123
    iget-object v1, p0, Lorg/webrtc/YuvConverter;->shader:Lorg/webrtc/GlShader;

    const-string/jumbo v2, "coeffs"

    invoke-virtual {v1, v2}, Lorg/webrtc/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/webrtc/YuvConverter;->coeffsLoc:I

    .line 124
    iget-object v1, p0, Lorg/webrtc/YuvConverter;->shader:Lorg/webrtc/GlShader;

    const-string/jumbo v2, "oesTex"

    invoke-virtual {v1, v2}, Lorg/webrtc/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 125
    const-string/jumbo v1, "Initialize fragment shader uniform values."

    invoke-static {v1}, Lorg/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lorg/webrtc/YuvConverter;->shader:Lorg/webrtc/GlShader;

    const-string/jumbo v2, "in_pos"

    sget-object v3, Lorg/webrtc/YuvConverter;->DEVICE_RECTANGLE:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v5, v3}, Lorg/webrtc/GlShader;->setVertexAttribArray(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 130
    iget-object v1, p0, Lorg/webrtc/YuvConverter;->shader:Lorg/webrtc/GlShader;

    const-string/jumbo v2, "in_tc"

    sget-object v3, Lorg/webrtc/YuvConverter;->TEXTURE_RECTANGLE:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v5, v3}, Lorg/webrtc/GlShader;->setVertexAttribArray(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 131
    return-void
.end method


# virtual methods
.method public convert(Ljava/nio/ByteBuffer;IIII[F)V
    .locals 17
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "stride"    # I
    .param p5, "srcTextureId"    # I
    .param p6, "transformMatrix"    # [F

    .prologue
    .line 135
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/YuvConverter;->threadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v2}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 136
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/webrtc/YuvConverter;->released:Z

    if-eqz v2, :cond_0

    .line 137
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "YuvConverter.convert called on released object"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 169
    :cond_0
    rem-int/lit8 v2, p4, 0x8

    if-eqz v2, :cond_1

    .line 170
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid stride, must be a multiple of 8"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 172
    :cond_1
    move/from16 v0, p4

    move/from16 v1, p2

    if-ge v0, v1, :cond_2

    .line 173
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid stride, must >= width"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 176
    :cond_2
    add-int/lit8 v2, p2, 0x3

    div-int/lit8 v16, v2, 0x4

    .line 177
    .local v16, "y_width":I
    add-int/lit8 v2, p2, 0x7

    div-int/lit8 v15, v2, 0x8

    .line 178
    .local v15, "uv_width":I
    add-int/lit8 v2, p3, 0x1

    div-int/lit8 v14, v2, 0x2

    .line 179
    .local v14, "uv_height":I
    add-int v13, p3, v14

    .line 180
    .local v13, "total_height":I
    mul-int v11, p4, v13

    .line 182
    .local v11, "size":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ge v2, v11, :cond_3

    .line 183
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "YuvConverter.convert called with too small buffer"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 188
    :cond_3
    invoke-static {}, Lorg/webrtc/RendererCommon;->verticalFlipMatrix()[F

    move-result-object v2

    move-object/from16 v0, p6

    invoke-static {v0, v2}, Lorg/webrtc/RendererCommon;->multiplyMatrices([F[F)[F

    move-result-object p6

    .line 191
    const v2, 0x8d40

    move-object/from16 v0, p0

    iget v3, v0, Lorg/webrtc/YuvConverter;->frameBufferId:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 192
    const-string/jumbo v2, "glBindFramebuffer"

    invoke-static {v2}, Lorg/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 194
    move-object/from16 v0, p0

    iget v2, v0, Lorg/webrtc/YuvConverter;->frameBufferWidth:I

    div-int/lit8 v3, p4, 0x4

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lorg/webrtc/YuvConverter;->frameBufferHeight:I

    if-eq v2, v13, :cond_5

    .line 195
    :cond_4
    div-int/lit8 v2, p4, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/webrtc/YuvConverter;->frameBufferWidth:I

    .line 196
    move-object/from16 v0, p0

    iput v13, v0, Lorg/webrtc/YuvConverter;->frameBufferHeight:I

    .line 198
    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 199
    const/16 v2, 0xde1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/webrtc/YuvConverter;->frameTextureId:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 200
    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/16 v4, 0x1908

    move-object/from16 v0, p0

    iget v5, v0, Lorg/webrtc/YuvConverter;->frameBufferWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/webrtc/YuvConverter;->frameBufferHeight:I

    const/4 v7, 0x0

    const/16 v8, 0x1908

    const/16 v9, 0x1401

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 204
    const v2, 0x8d40

    invoke-static {v2}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v12

    .line 205
    .local v12, "status":I
    const v2, 0x8cd5

    if-eq v12, v2, :cond_5

    .line 206
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Framebuffer not complete, status: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 210
    .end local v12    # "status":I
    :cond_5
    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 211
    const v2, 0x8d65

    move/from16 v0, p5

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 212
    move-object/from16 v0, p0

    iget v2, v0, Lorg/webrtc/YuvConverter;->texMatrixLoc:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-static {v2, v3, v4, v0, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 215
    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, v16

    move/from16 v1, p3

    invoke-static {v2, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 217
    move-object/from16 v0, p0

    iget v2, v0, Lorg/webrtc/YuvConverter;->xUnitLoc:I

    const/4 v3, 0x0

    aget v3, p6, v3

    move/from16 v0, p2

    int-to-float v4, v0

    div-float/2addr v3, v4

    const/4 v4, 0x1

    aget v4, p6, v4

    move/from16 v0, p2

    int-to-float v5, v0

    div-float/2addr v4, v5

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 221
    move-object/from16 v0, p0

    iget v2, v0, Lorg/webrtc/YuvConverter;->coeffsLoc:I

    const v3, 0x3e991687    # 0.299f

    const v4, 0x3f1645a2    # 0.587f

    const v5, 0x3de978d5    # 0.114f

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 222
    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 225
    const/4 v2, 0x0

    move/from16 v0, p3

    invoke-static {v2, v0, v15, v14}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 227
    move-object/from16 v0, p0

    iget v2, v0, Lorg/webrtc/YuvConverter;->xUnitLoc:I

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    aget v4, p6, v4

    mul-float/2addr v3, v4

    move/from16 v0, p2

    int-to-float v4, v0

    div-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x1

    aget v5, p6, v5

    mul-float/2addr v4, v5

    move/from16 v0, p2

    int-to-float v5, v0

    div-float/2addr v4, v5

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 229
    move-object/from16 v0, p0

    iget v2, v0, Lorg/webrtc/YuvConverter;->coeffsLoc:I

    const v3, -0x41d2f1aa    # -0.169f

    const v4, -0x4156872b    # -0.331f

    const v5, 0x3eff7cee    # 0.499f

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-static {v2, v3, v4, v5, v6}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 230
    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 233
    div-int/lit8 v2, p4, 0x8

    move/from16 v0, p3

    invoke-static {v2, v0, v15, v14}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 234
    move-object/from16 v0, p0

    iget v2, v0, Lorg/webrtc/YuvConverter;->coeffsLoc:I

    const v3, 0x3eff7cee    # 0.499f

    const v4, -0x4129fbe7    # -0.418f

    const v5, -0x42597f63    # -0.0813f

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-static {v2, v3, v4, v5, v6}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 235
    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 237
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/webrtc/YuvConverter;->frameBufferWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/webrtc/YuvConverter;->frameBufferHeight:I

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    move-object/from16 v8, p1

    invoke-static/range {v2 .. v8}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 240
    const-string/jumbo v2, "YuvConverter.convert"

    invoke-static {v2}, Lorg/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 243
    const v2, 0x8d40

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 244
    const/16 v2, 0xde1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 248
    const v2, 0x8d65

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 249
    return-void
.end method

.method public release()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 252
    iget-object v0, p0, Lorg/webrtc/YuvConverter;->threadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 253
    iput-boolean v3, p0, Lorg/webrtc/YuvConverter;->released:Z

    .line 254
    iget-object v0, p0, Lorg/webrtc/YuvConverter;->shader:Lorg/webrtc/GlShader;

    invoke-virtual {v0}, Lorg/webrtc/GlShader;->release()V

    .line 255
    new-array v0, v3, [I

    iget v1, p0, Lorg/webrtc/YuvConverter;->frameTextureId:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 256
    new-array v0, v3, [I

    iget v1, p0, Lorg/webrtc/YuvConverter;->frameBufferId:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 257
    iput v2, p0, Lorg/webrtc/YuvConverter;->frameBufferWidth:I

    .line 258
    iput v2, p0, Lorg/webrtc/YuvConverter;->frameBufferHeight:I

    .line 259
    return-void
.end method
