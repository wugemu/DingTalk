.class Lorg/webrtc/ali/MediaCodecVideoEncoder$1;
.super Ljava/lang/Object;
.source "MediaCodecVideoEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/ali/MediaCodecVideoEncoder;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/ali/MediaCodecVideoEncoder;

.field final synthetic val$caughtException:Lorg/webrtc/ali/MediaCodecVideoEncoder$1CaughtException;

.field final synthetic val$releaseDone:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lorg/webrtc/ali/MediaCodecVideoEncoder;Lorg/webrtc/ali/MediaCodecVideoEncoder$1CaughtException;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/ali/MediaCodecVideoEncoder;

    .prologue
    .line 616
    iput-object p1, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder$1;->this$0:Lorg/webrtc/ali/MediaCodecVideoEncoder;

    iput-object p2, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder$1;->val$caughtException:Lorg/webrtc/ali/MediaCodecVideoEncoder$1CaughtException;

    iput-object p3, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder$1;->val$releaseDone:Ljava/util/concurrent/CountDownLatch;

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
    .line 619
    const-string/jumbo v1, "MediaCodecVideoEncoder"

    const-string/jumbo v2, "Java releaseEncoder on release thread"

    invoke-static {v1, v2}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder$1;->this$0:Lorg/webrtc/ali/MediaCodecVideoEncoder;

    invoke-static {v1}, Lorg/webrtc/ali/MediaCodecVideoEncoder;->access$000(Lorg/webrtc/ali/MediaCodecVideoEncoder;)Landroid/media/MediaCodec;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    :goto_0
    :try_start_1
    iget-object v1, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder$1;->this$0:Lorg/webrtc/ali/MediaCodecVideoEncoder;

    invoke-static {v1}, Lorg/webrtc/ali/MediaCodecVideoEncoder;->access$000(Lorg/webrtc/ali/MediaCodecVideoEncoder;)Landroid/media/MediaCodec;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 631
    :goto_1
    const-string/jumbo v1, "MediaCodecVideoEncoder"

    const-string/jumbo v2, "Java releaseEncoder on release thread done"

    invoke-static {v1, v2}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iget-object v1, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder$1;->val$releaseDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 634
    return-void

    .line 622
    :catch_0
    move-exception v0

    .line 623
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MediaCodecVideoEncoder"

    const-string/jumbo v2, "Media encoder stop failed"

    invoke-static {v1, v2, v0}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 627
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 628
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MediaCodecVideoEncoder"

    const-string/jumbo v2, "Media encoder release failed"

    invoke-static {v1, v2, v0}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 629
    iget-object v1, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder$1;->val$caughtException:Lorg/webrtc/ali/MediaCodecVideoEncoder$1CaughtException;

    iput-object v0, v1, Lorg/webrtc/ali/MediaCodecVideoEncoder$1CaughtException;->e:Ljava/lang/Exception;

    goto :goto_1
.end method
