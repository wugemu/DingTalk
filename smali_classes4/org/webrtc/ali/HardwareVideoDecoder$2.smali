.class Lorg/webrtc/ali/HardwareVideoDecoder$2;
.super Ljava/lang/Object;
.source "HardwareVideoDecoder.java"

# interfaces
.implements Lorg/webrtc/ali/VideoFrame$I420Buffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/ali/HardwareVideoDecoder;->createBufferFromI420(Ljava/nio/ByteBuffer;IIIIII)Lorg/webrtc/ali/VideoFrame$I420Buffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private refCount:I

.field final synthetic this$0:Lorg/webrtc/ali/HardwareVideoDecoder;

.field final synthetic val$buffer:Ljava/nio/ByteBuffer;

.field final synthetic val$chromaHeight:I

.field final synthetic val$height:I

.field final synthetic val$outputBufferIndex:I

.field final synthetic val$stride:I

.field final synthetic val$uPos:I

.field final synthetic val$uvStride:I

.field final synthetic val$vPos:I

.field final synthetic val$width:I

.field final synthetic val$yPos:I


# direct methods
.method constructor <init>(Lorg/webrtc/ali/HardwareVideoDecoder;Ljava/nio/ByteBuffer;IIIIIIIII)V
    .locals 1
    .param p1, "this$0"    # Lorg/webrtc/ali/HardwareVideoDecoder;

    .prologue
    .line 522
    iput-object p1, p0, Lorg/webrtc/ali/HardwareVideoDecoder$2;->this$0:Lorg/webrtc/ali/HardwareVideoDecoder;

    iput-object p2, p0, Lorg/webrtc/ali/HardwareVideoDecoder$2;->val$buffer:Ljava/nio/ByteBuffer;

    iput p3, p0, Lorg/webrtc/ali/HardwareVideoDecoder$2;->val$yPos:I

    iput p4, p0, Lorg/webrtc/ali/HardwareVideoDecoder$2;->val$height:I

    iput p5, p0, Lorg/webrtc/ali/HardwareVideoDecoder$2;->val$uPos:I

    iput p6, p0, Lorg/webrtc/ali/HardwareVideoDecoder$2;->val$chromaHeight:I

    iput p7, p0, Lorg/webrtc/ali/HardwareVideoDecoder$2;->val$vPos:I

    iput p8, p0, Lorg/webrtc/ali/HardwareVideoDecoder$2;->val$stride:I

    iput p9, p0, Lorg/webrtc/ali/HardwareVideoDecoder$2;->val$uvStride:I

    iput p10, p0, Lorg/webrtc/ali/HardwareVideoDecoder$2;->val$width:I

    iput p11, p0, Lorg/webrtc/ali/HardwareVideoDecoder$2;->val$outputBufferIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    const/4 v0, 0x1

    iput v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder$2;->refCount:I

    return-void
.end method


# virtual methods
.method public getDataU()Ljava/nio/ByteBuffer;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 535
    iget-object v1, p0, Lorg/webrtc/ali/HardwareVideoDecoder$2;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 536
    .local v0, "data":Ljava/nio/ByteBuffer;
    iget v1, p0, Lorg/webrtc/ali/HardwareVideoDecoder$2;->val$uPos:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 537
    iget v1, p0, Lorg/webrtc/ali/HardwareVideoDecoder$2;->val$uPos:I

    invoke-virtual {p0}, Lorg/webrtc/ali/HardwareVideoDecoder$2;->getStrideU()I

    move-result v2

    iget v3, p0, Lorg/webrtc/ali/HardwareVideoDecoder$2;->val$chromaHeight:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 538
    return-object v0
.end method

.method public getDataV()Ljava/nio/ByteBuffer;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 543
    iget-object v1, p0, Lorg/webrtc/ali/HardwareVideoDecoder$2;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 544
    .local v0, "data":Ljava/nio/ByteBuffer;
    iget v1, p0, Lorg/webrtc/ali/HardwareVideoDecoder$2;->val$vPos:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 545
    iget v1, p0, Lorg/webrtc/ali/HardwareVideoDecoder$2;->val$vPos:I

    invoke-virtual {p0}, Lorg/webrtc/ali/HardwareVideoDecoder$2;->getStrideV()I

    move-result v2

    iget v3, p0, Lorg/webrtc/ali/HardwareVideoDecoder$2;->val$chromaHeight:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 546
    return-object v0
.end method

.method public getDataY()Ljava/nio/ByteBuffer;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 527
    iget-object v1, p0, Lorg/webrtc/ali/HardwareVideoDecoder$2;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 528
    .local v0, "data":Ljava/nio/ByteBuffer;
    iget v1, p0, Lorg/webrtc/ali/HardwareVideoDecoder$2;->val$yPos:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 529
    iget v1, p0, Lorg/webrtc/ali/HardwareVideoDecoder$2;->val$yPos:I

    invoke-virtual {p0}, Lorg/webrtc/ali/HardwareVideoDecoder$2;->getStrideY()I

    move-result v2

    iget v3, p0, Lorg/webrtc/ali/HardwareVideoDecoder$2;->val$height:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 530
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 571
    iget v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder$2;->val$height:I

    return v0
.end method

.method public getStrideU()I
    .locals 1

    .prologue
    .line 556
    iget v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder$2;->val$uvStride:I

    return v0
.end method

.method public getStrideV()I
    .locals 1

    .prologue
    .line 561
    iget v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder$2;->val$uvStride:I

    return v0
.end method

.method public getStrideY()I
    .locals 1

    .prologue
    .line 551
    iget v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder$2;->val$stride:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 566
    iget v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder$2;->val$width:I

    return v0
.end method

.method public release()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 586
    iget v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder$2;->refCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder$2;->refCount:I

    .line 588
    iget v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder$2;->refCount:I

    if-nez v0, :cond_0

    .line 589
    iget-object v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder$2;->this$0:Lorg/webrtc/ali/HardwareVideoDecoder;

    invoke-static {v0}, Lorg/webrtc/ali/HardwareVideoDecoder;->access$400(Lorg/webrtc/ali/HardwareVideoDecoder;)Landroid/media/MediaCodec;

    move-result-object v0

    iget v1, p0, Lorg/webrtc/ali/HardwareVideoDecoder$2;->val$outputBufferIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 590
    iget-object v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder$2;->this$0:Lorg/webrtc/ali/HardwareVideoDecoder;

    invoke-static {v0}, Lorg/webrtc/ali/HardwareVideoDecoder;->access$500(Lorg/webrtc/ali/HardwareVideoDecoder;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 591
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder$2;->this$0:Lorg/webrtc/ali/HardwareVideoDecoder;

    invoke-static {v0}, Lorg/webrtc/ali/HardwareVideoDecoder;->access$610(Lorg/webrtc/ali/HardwareVideoDecoder;)I

    .line 592
    iget-object v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder$2;->this$0:Lorg/webrtc/ali/HardwareVideoDecoder;

    invoke-static {v0}, Lorg/webrtc/ali/HardwareVideoDecoder;->access$500(Lorg/webrtc/ali/HardwareVideoDecoder;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 593
    monitor-exit v1

    .line 595
    :cond_0
    return-void

    .line 593
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public retain()V
    .locals 1

    .prologue
    .line 581
    iget v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder$2;->refCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder$2;->refCount:I

    .line 582
    return-void
.end method

.method public toI420()Lorg/webrtc/ali/VideoFrame$I420Buffer;
    .locals 0

    .prologue
    .line 576
    return-object p0
.end method
