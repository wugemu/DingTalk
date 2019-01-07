.class Lcom/taobao/taolive/MediaCodecVideoEncoder$1;
.super Ljava/lang/Object;
.source "MediaCodecVideoEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/taolive/MediaCodecVideoEncoder;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/taolive/MediaCodecVideoEncoder;

.field final synthetic val$releaseDone:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/taobao/taolive/MediaCodecVideoEncoder;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/taolive/MediaCodecVideoEncoder;

    .prologue
    .line 518
    iput-object p1, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder$1;->this$0:Lcom/taobao/taolive/MediaCodecVideoEncoder;

    iput-object p2, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder$1;->val$releaseDone:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 522
    :try_start_0
    const-string/jumbo v1, "MediaCodecVideoEncoder_java"

    const-string/jumbo v2, "Java releaseEncoder on release thread"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 523
    iget-object v1, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder$1;->this$0:Lcom/taobao/taolive/MediaCodecVideoEncoder;

    invoke-static {v1}, Lcom/taobao/taolive/MediaCodecVideoEncoder;->access$000(Lcom/taobao/taolive/MediaCodecVideoEncoder;)Landroid/media/MediaCodec;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 524
    iget-object v1, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder$1;->this$0:Lcom/taobao/taolive/MediaCodecVideoEncoder;

    invoke-static {v1}, Lcom/taobao/taolive/MediaCodecVideoEncoder;->access$000(Lcom/taobao/taolive/MediaCodecVideoEncoder;)Landroid/media/MediaCodec;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 525
    iget-object v1, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder$1;->this$0:Lcom/taobao/taolive/MediaCodecVideoEncoder;

    invoke-static {v1}, Lcom/taobao/taolive/MediaCodecVideoEncoder;->access$000(Lcom/taobao/taolive/MediaCodecVideoEncoder;)Landroid/media/MediaCodec;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 527
    :cond_0
    const-string/jumbo v1, "MediaCodecVideoEncoder_java"

    const-string/jumbo v2, "Java releaseEncoder on release thread done"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :goto_0
    iget-object v1, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder$1;->val$releaseDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 532
    return-void

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MediaCodecVideoEncoder_java"

    const-string/jumbo v2, "Media encoder release failed"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/living/utils/TBLSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
