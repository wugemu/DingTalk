.class public Lorg/webrtc/ali/GlTextureFrameBuffer;
.super Ljava/lang/Object;
.source "GlTextureFrameBuffer.java"


# instance fields
.field private final frameBufferId:I

.field private height:I

.field private final pixelFormat:I

.field private final textureId:I

.field private width:I


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "pixelFormat"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    packed-switch p1, :pswitch_data_0

    .line 40
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Invalid pixel format: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 37
    :pswitch_0
    iput p1, p0, Lorg/webrtc/ali/GlTextureFrameBuffer;->pixelFormat:I

    .line 44
    const/16 v1, 0xde1

    invoke-static {v1}, Lorg/webrtc/ali/GlUtil;->generateTexture(I)I

    move-result v1

    iput v1, p0, Lorg/webrtc/ali/GlTextureFrameBuffer;->textureId:I

    .line 45
    iput v2, p0, Lorg/webrtc/ali/GlTextureFrameBuffer;->width:I

    .line 46
    iput v2, p0, Lorg/webrtc/ali/GlTextureFrameBuffer;->height:I

    .line 49
    new-array v0, v3, [I

    .line 50
    .local v0, "frameBuffers":[I
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 51
    aget v1, v0, v2

    iput v1, p0, Lorg/webrtc/ali/GlTextureFrameBuffer;->frameBufferId:I

    .line 52
    return-void

    .line 33
    :pswitch_data_0
    .packed-switch 0x1907
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getFrameBufferId()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lorg/webrtc/ali/GlTextureFrameBuffer;->frameBufferId:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lorg/webrtc/ali/GlTextureFrameBuffer;->height:I

    return v0
.end method

.method public getTextureId()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lorg/webrtc/ali/GlTextureFrameBuffer;->textureId:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lorg/webrtc/ali/GlTextureFrameBuffer;->width:I

    return v0
.end method

.method public release()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 112
    new-array v0, v3, [I

    iget v1, p0, Lorg/webrtc/ali/GlTextureFrameBuffer;->textureId:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 113
    new-array v0, v3, [I

    iget v1, p0, Lorg/webrtc/ali/GlTextureFrameBuffer;->frameBufferId:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 114
    iput v2, p0, Lorg/webrtc/ali/GlTextureFrameBuffer;->width:I

    .line 115
    iput v2, p0, Lorg/webrtc/ali/GlTextureFrameBuffer;->height:I

    .line 116
    return-void
.end method

.method public setSize(II)V
    .locals 11
    .param p1, "width"    # I
    .param p2, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const v10, 0x8d40

    const/16 v0, 0xde1

    const/4 v1, 0x0

    .line 60
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1
    iget v2, p0, Lorg/webrtc/ali/GlTextureFrameBuffer;->width:I

    if-ne p1, v2, :cond_2

    iget v2, p0, Lorg/webrtc/ali/GlTextureFrameBuffer;->height:I

    if-ne p2, v2, :cond_2

    .line 89
    :goto_0
    return-void

    .line 66
    :cond_2
    iput p1, p0, Lorg/webrtc/ali/GlTextureFrameBuffer;->width:I

    .line 67
    iput p2, p0, Lorg/webrtc/ali/GlTextureFrameBuffer;->height:I

    .line 70
    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 71
    iget v2, p0, Lorg/webrtc/ali/GlTextureFrameBuffer;->textureId:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 72
    iget v2, p0, Lorg/webrtc/ali/GlTextureFrameBuffer;->pixelFormat:I

    iget v6, p0, Lorg/webrtc/ali/GlTextureFrameBuffer;->pixelFormat:I

    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v3, p1

    move v4, p2

    move v5, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 74
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 75
    const-string/jumbo v2, "GlTextureFrameBuffer setSize"

    invoke-static {v2}, Lorg/webrtc/ali/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 78
    iget v2, p0, Lorg/webrtc/ali/GlTextureFrameBuffer;->frameBufferId:I

    invoke-static {v10, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 79
    const v2, 0x8ce0

    iget v3, p0, Lorg/webrtc/ali/GlTextureFrameBuffer;->textureId:I

    invoke-static {v10, v2, v0, v3, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 83
    invoke-static {v10}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v9

    .line 84
    .local v9, "status":I
    const v0, 0x8cd5

    if-eq v9, v0, :cond_3

    .line 85
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Framebuffer not complete, status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_3
    invoke-static {v10, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    goto :goto_0
.end method
