.class public Lorg/webrtc/ali/GlUtil;
.super Ljava/lang/Object;
.source "GlUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkNoGLES2Error(Ljava/lang/String;)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 28
    .local v0, "error":I
    if-eqz v0, :cond_0

    .line 29
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": GLES20 error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31
    :cond_0
    return-void
.end method

.method public static createFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 3
    .param p0, "coords"    # [F

    .prologue
    .line 35
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 36
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 37
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 38
    .local v1, "fb":Ljava/nio/FloatBuffer;
    invoke-virtual {v1, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 39
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 40
    return-object v1
.end method

.method public static generateTexture(I)I
    .locals 6
    .param p0, "target"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    const v4, 0x47012f00    # 33071.0f

    const v3, 0x46180400    # 9729.0f

    .line 47
    new-array v0, v5, [I

    .line 48
    .local v0, "textureArray":[I
    invoke-static {v5, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 49
    aget v1, v0, v2

    .line 50
    .local v1, "textureId":I
    invoke-static {p0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 51
    const/16 v2, 0x2801

    invoke-static {p0, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 52
    const/16 v2, 0x2800

    invoke-static {p0, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 53
    const/16 v2, 0x2802

    invoke-static {p0, v2, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 54
    const/16 v2, 0x2803

    invoke-static {p0, v2, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 55
    const-string/jumbo v2, "generateTexture"

    invoke-static {v2}, Lorg/webrtc/ali/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 56
    return v1
.end method
