.class Lorg/webrtc/ali/MediaCodecVideoDecoder$1;
.super Ljava/lang/Object;
.source "MediaCodecVideoDecoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/ali/MediaCodecVideoDecoder;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/ali/MediaCodecVideoDecoder;

.field final synthetic val$releaseDone:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lorg/webrtc/ali/MediaCodecVideoDecoder;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/ali/MediaCodecVideoDecoder;

    .prologue
    .line 374
    iput-object p1, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$1;->this$0:Lorg/webrtc/ali/MediaCodecVideoDecoder;

    iput-object p2, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$1;->val$releaseDone:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 378
    :try_start_0
    const-string/jumbo v1, "MediaCodecVideoDecoder"

    const-string/jumbo v2, "Java releaseDecoder on release thread"

    invoke-static {v1, v2}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v1, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$1;->this$0:Lorg/webrtc/ali/MediaCodecVideoDecoder;

    invoke-static {v1}, Lorg/webrtc/ali/MediaCodecVideoDecoder;->access$000(Lorg/webrtc/ali/MediaCodecVideoDecoder;)Landroid/media/MediaCodec;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 380
    iget-object v1, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$1;->this$0:Lorg/webrtc/ali/MediaCodecVideoDecoder;

    invoke-static {v1}, Lorg/webrtc/ali/MediaCodecVideoDecoder;->access$000(Lorg/webrtc/ali/MediaCodecVideoDecoder;)Landroid/media/MediaCodec;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 381
    const-string/jumbo v1, "MediaCodecVideoDecoder"

    const-string/jumbo v2, "Java releaseDecoder on release thread done"

    invoke-static {v1, v2}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :goto_0
    iget-object v1, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$1;->val$releaseDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 386
    return-void

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MediaCodecVideoDecoder"

    const-string/jumbo v2, "Media decoder release failed"

    invoke-static {v1, v2, v0}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
