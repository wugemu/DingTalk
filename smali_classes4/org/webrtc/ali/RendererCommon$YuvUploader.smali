.class public Lorg/webrtc/ali/RendererCommon$YuvUploader;
.super Ljava/lang/Object;
.source "RendererCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/RendererCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "YuvUploader"
.end annotation


# instance fields
.field private copyBuffer:Ljava/nio/ByteBuffer;

.field private yuvTextures:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public release()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 119
    iput-object v3, p0, Lorg/webrtc/ali/RendererCommon$YuvUploader;->copyBuffer:Ljava/nio/ByteBuffer;

    .line 120
    iget-object v0, p0, Lorg/webrtc/ali/RendererCommon$YuvUploader;->yuvTextures:[I

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x3

    iget-object v1, p0, Lorg/webrtc/ali/RendererCommon$YuvUploader;->yuvTextures:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 122
    iput-object v3, p0, Lorg/webrtc/ali/RendererCommon$YuvUploader;->yuvTextures:[I

    .line 124
    :cond_0
    return-void
.end method

.method public uploadYuvData(II[I[Ljava/nio/ByteBuffer;)[I
    .locals 13
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "strides"    # [I
    .param p4, "planes"    # [Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 73
    const/4 v0, 0x3

    new-array v12, v0, [I

    const/4 v0, 0x0

    aput p1, v12, v0

    const/4 v0, 0x1

    div-int/lit8 v1, p1, 0x2

    aput v1, v12, v0

    const/4 v0, 0x2

    div-int/lit8 v1, p1, 0x2

    aput v1, v12, v0

    .line 74
    .local v12, "planeWidths":[I
    const/4 v0, 0x3

    new-array v11, v0, [I

    const/4 v0, 0x0

    aput p2, v11, v0

    const/4 v0, 0x1

    div-int/lit8 v1, p2, 0x2

    aput v1, v11, v0

    const/4 v0, 0x2

    div-int/lit8 v1, p2, 0x2

    aput v1, v11, v0

    .line 76
    .local v11, "planeHeights":[I
    const/4 v9, 0x0

    .line 77
    .local v9, "copyCapacityNeeded":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    const/4 v0, 0x3

    if-ge v10, v0, :cond_1

    .line 78
    aget v0, p3, v10

    aget v1, v12, v10

    if-le v0, v1, :cond_0

    .line 79
    aget v0, v12, v10

    aget v1, v11, v10

    mul-int/2addr v0, v1

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 77
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 83
    :cond_1
    if-lez v9, :cond_3

    iget-object v0, p0, Lorg/webrtc/ali/RendererCommon$YuvUploader;->copyBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/webrtc/ali/RendererCommon$YuvUploader;->copyBuffer:Ljava/nio/ByteBuffer;

    .line 84
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, v9, :cond_3

    .line 85
    :cond_2
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/ali/RendererCommon$YuvUploader;->copyBuffer:Ljava/nio/ByteBuffer;

    .line 88
    :cond_3
    iget-object v0, p0, Lorg/webrtc/ali/RendererCommon$YuvUploader;->yuvTextures:[I

    if-nez v0, :cond_4

    .line 89
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/webrtc/ali/RendererCommon$YuvUploader;->yuvTextures:[I

    .line 90
    const/4 v10, 0x0

    :goto_1
    const/4 v0, 0x3

    if-ge v10, v0, :cond_4

    .line 91
    iget-object v0, p0, Lorg/webrtc/ali/RendererCommon$YuvUploader;->yuvTextures:[I

    const/16 v1, 0xde1

    invoke-static {v1}, Lorg/webrtc/ali/GlUtil;->generateTexture(I)I

    move-result v1

    aput v1, v0, v10

    .line 90
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 95
    :cond_4
    const/4 v10, 0x0

    :goto_2
    const/4 v0, 0x3

    if-ge v10, v0, :cond_6

    .line 96
    const v0, 0x84c0

    add-int/2addr v0, v10

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 97
    const/16 v0, 0xde1

    iget-object v1, p0, Lorg/webrtc/ali/RendererCommon$YuvUploader;->yuvTextures:[I

    aget v1, v1, v10

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 100
    aget v0, p3, v10

    aget v1, v12, v10

    if-ne v0, v1, :cond_5

    .line 102
    aget-object v8, p4, v10

    .line 108
    .local v8, "packedByteBuffer":Ljava/nio/ByteBuffer;
    :goto_3
    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/16 v2, 0x1909

    aget v3, v12, v10

    aget v4, v11, v10

    const/4 v5, 0x0

    const/16 v6, 0x1909

    const/16 v7, 0x1401

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 95
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 104
    .end local v8    # "packedByteBuffer":Ljava/nio/ByteBuffer;
    :cond_5
    aget-object v0, p4, v10

    aget v1, v12, v10

    aget v2, v11, v10

    aget v3, p3, v10

    iget-object v4, p0, Lorg/webrtc/ali/RendererCommon$YuvUploader;->copyBuffer:Ljava/nio/ByteBuffer;

    aget v5, v12, v10

    invoke-static/range {v0 .. v5}, Lorg/webrtc/ali/VideoRenderer;->nativeCopyPlane(Ljava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;I)V

    .line 106
    iget-object v8, p0, Lorg/webrtc/ali/RendererCommon$YuvUploader;->copyBuffer:Ljava/nio/ByteBuffer;

    .restart local v8    # "packedByteBuffer":Ljava/nio/ByteBuffer;
    goto :goto_3

    .line 111
    .end local v8    # "packedByteBuffer":Ljava/nio/ByteBuffer;
    :cond_6
    iget-object v0, p0, Lorg/webrtc/ali/RendererCommon$YuvUploader;->yuvTextures:[I

    return-object v0
.end method
