.class public Lorg/webrtc/RendererCommon$YuvUploader;
.super Ljava/lang/Object;
.source "RendererCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/RendererCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "YuvUploader"
.end annotation


# instance fields
.field private copyBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uploadYuvData([III[I[Ljava/nio/ByteBuffer;)V
    .locals 13
    .param p1, "outputYuvTextures"    # [I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "strides"    # [I
    .param p5, "planes"    # [Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 73
    const/4 v0, 0x3

    new-array v12, v0, [I

    const/4 v0, 0x0

    aput p2, v12, v0

    const/4 v0, 0x1

    div-int/lit8 v1, p2, 0x2

    aput v1, v12, v0

    const/4 v0, 0x2

    div-int/lit8 v1, p2, 0x2

    aput v1, v12, v0

    .line 74
    .local v12, "planeWidths":[I
    const/4 v0, 0x3

    new-array v11, v0, [I

    const/4 v0, 0x0

    aput p3, v11, v0

    const/4 v0, 0x1

    div-int/lit8 v1, p3, 0x2

    aput v1, v11, v0

    const/4 v0, 0x2

    div-int/lit8 v1, p3, 0x2

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
    aget v0, p4, v10

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

    iget-object v0, p0, Lorg/webrtc/RendererCommon$YuvUploader;->copyBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/webrtc/RendererCommon$YuvUploader;->copyBuffer:Ljava/nio/ByteBuffer;

    .line 84
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, v9, :cond_3

    .line 85
    :cond_2
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/RendererCommon$YuvUploader;->copyBuffer:Ljava/nio/ByteBuffer;

    .line 88
    :cond_3
    const/4 v10, 0x0

    :goto_1
    const/4 v0, 0x3

    if-ge v10, v0, :cond_5

    .line 89
    const v0, 0x84c0

    add-int/2addr v0, v10

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 90
    const/16 v0, 0xde1

    aget v1, p1, v10

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 93
    aget v0, p4, v10

    aget v1, v12, v10

    if-ne v0, v1, :cond_4

    .line 95
    aget-object v8, p5, v10

    .line 101
    .local v8, "packedByteBuffer":Ljava/nio/ByteBuffer;
    :goto_2
    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/16 v2, 0x1909

    aget v3, v12, v10

    aget v4, v11, v10

    const/4 v5, 0x0

    const/16 v6, 0x1909

    const/16 v7, 0x1401

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 88
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 97
    .end local v8    # "packedByteBuffer":Ljava/nio/ByteBuffer;
    :cond_4
    aget-object v0, p5, v10

    aget v1, v12, v10

    aget v2, v11, v10

    aget v3, p4, v10

    iget-object v4, p0, Lorg/webrtc/RendererCommon$YuvUploader;->copyBuffer:Ljava/nio/ByteBuffer;

    aget v5, v12, v10

    invoke-static/range {v0 .. v5}, Lorg/webrtc/VideoRenderer;->nativeCopyPlane(Ljava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;I)V

    .line 99
    iget-object v8, p0, Lorg/webrtc/RendererCommon$YuvUploader;->copyBuffer:Ljava/nio/ByteBuffer;

    .restart local v8    # "packedByteBuffer":Ljava/nio/ByteBuffer;
    goto :goto_2

    .line 104
    .end local v8    # "packedByteBuffer":Ljava/nio/ByteBuffer;
    :cond_5
    return-void
.end method
