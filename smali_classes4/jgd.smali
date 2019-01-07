.class public final Ljgd;
.super Ljava/lang/Object;
.source "GLDrawer2D.java"


# static fields
.field private static final g:[F

.field private static final h:[F


# instance fields
.field public final a:I

.field public b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field private final i:I

.field private final j:I

.field private final k:Ljava/nio/FloatBuffer;

.field private final l:Ljava/nio/FloatBuffer;

.field private final m:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 37
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Ljgd;->g:[F

    .line 38
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Ljgd;->h:[F

    return-void

    .line 37
    .line 38
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

.method public constructor <init>(Z)V
    .locals 3
    .param p1, "isOES"    # Z

    .prologue
    .line 59
    sget-object v0, Ljgd;->g:[F

    sget-object v1, Ljgd;->h:[F

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljgd;-><init>([F[FZ)V

    .line 60
    return-void
.end method

.method private constructor <init>([F[FZ)V
    .locals 6
    .param p1, "vertices"    # [F
    .param p2, "texcoord"    # [F
    .param p3, "isOES"    # Z

    .prologue
    const/16 v2, 0x1406

    const/4 v1, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Ljgd;->m:[F

    .line 70
    if-eqz p1, :cond_0

    array-length v0, p1

    move v4, v0

    :goto_0
    if-eqz p2, :cond_1

    array-length v0, p2

    :goto_1
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljgd;->i:I

    .line 71
    iget v0, p0, Ljgd;->i:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljgd;->j:I

    .line 73
    if-eqz p3, :cond_2

    const v0, 0x8d65

    :goto_2
    iput v0, p0, Ljgd;->a:I

    .line 74
    iget v0, p0, Ljgd;->j:I

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 75
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Ljgd;->k:Ljava/nio/FloatBuffer;

    .line 76
    iget-object v0, p0, Ljgd;->k:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 77
    iget-object v0, p0, Ljgd;->k:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 78
    iget v0, p0, Ljgd;->j:I

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 79
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Ljgd;->l:Ljava/nio/FloatBuffer;

    .line 80
    iget-object v0, p0, Ljgd;->l:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 81
    iget-object v0, p0, Ljgd;->l:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 83
    if-eqz p3, :cond_3

    .line 84
    const-string/jumbo v0, "#version 100\nuniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    const-string/jumbo v4, "#version 100\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nvarying highp vec2 vTextureCoord;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}"

    invoke-static {v0, v4}, Ljge;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljgd;->b:I

    .line 89
    :goto_3
    iget-object v0, p0, Ljgd;->m:[F

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1277
    iget v0, p0, Ljgd;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1278
    iget v0, p0, Ljgd;->b:I

    const-string/jumbo v4, "aPosition"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljgd;->c:I

    .line 1279
    iget v0, p0, Ljgd;->b:I

    const-string/jumbo v4, "aTextureCoord"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljgd;->d:I

    .line 1280
    iget v0, p0, Ljgd;->b:I

    const-string/jumbo v4, "uMVPMatrix"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljgd;->e:I

    .line 1281
    iget v0, p0, Ljgd;->b:I

    const-string/jumbo v4, "uTexMatrix"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljgd;->f:I

    .line 1283
    iget v0, p0, Ljgd;->e:I

    iget-object v4, p0, Ljgd;->m:[F

    invoke-static {v0, v5, v3, v4, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 1284
    iget v0, p0, Ljgd;->f:I

    iget-object v4, p0, Ljgd;->m:[F

    invoke-static {v0, v5, v3, v4, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 1285
    iget v0, p0, Ljgd;->c:I

    iget v4, p0, Ljgd;->j:I

    iget-object v5, p0, Ljgd;->k:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1286
    iget v0, p0, Ljgd;->d:I

    iget v4, p0, Ljgd;->j:I

    iget-object v5, p0, Ljgd;->l:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1287
    iget v0, p0, Ljgd;->c:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1288
    iget v0, p0, Ljgd;->d:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 91
    return-void

    :cond_0
    move v4, v3

    .line 70
    goto/16 :goto_0

    :cond_1
    move v0, v3

    goto/16 :goto_1

    .line 73
    :cond_2
    const/16 v0, 0xde1

    goto/16 :goto_2

    .line 86
    :cond_3
    const-string/jumbo v0, "#version 100\nuniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    const-string/jumbo v4, "#version 100\nprecision mediump float;\nuniform sampler2D sTexture;\nvarying highp vec2 vTextureCoord;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}"

    invoke-static {v0, v4}, Ljge;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljgd;->b:I

    goto :goto_3
.end method


# virtual methods
.method public final declared-synchronized a(I[FI)V
    .locals 5
    .param p1, "texId"    # I
    .param p2, "tex_matrix"    # [F
    .param p3, "offset"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljgd;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v0, :cond_0

    .line 165
    :goto_0
    monitor-exit p0

    return-void

    .line 153
    :cond_0
    :try_start_1
    iget v0, p0, Ljgd;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 154
    if-eqz p2, :cond_1

    .line 156
    iget v0, p0, Ljgd;->f:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 159
    :cond_1
    iget v0, p0, Ljgd;->e:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Ljgd;->m:[F

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 160
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 161
    iget v0, p0, Ljgd;->a:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 162
    const/4 v0, 0x5

    const/4 v1, 0x0

    iget v2, p0, Ljgd;->i:I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 163
    iget v0, p0, Ljgd;->a:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 164
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
