.class final Lcom/taobao/artc/internal/ArtcEngineImpl$38;
.super Ljava/lang/Object;
.source "ArtcEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/artc/internal/ArtcEngineImpl;->unInitialize2(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/artc/internal/ArtcEngineImpl;


# direct methods
.method constructor <init>(Lcom/taobao/artc/internal/ArtcEngineImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 611
    iput-object p1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$38;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x0

    .line 615
    :try_start_0
    invoke-static {}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$1100()Lcom/taobao/artc/utils/ArtcDeviceInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 616
    invoke-static {}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$1100()Lcom/taobao/artc/utils/ArtcDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/artc/utils/ArtcDeviceInfo;->uninit()V

    .line 617
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$1102(Lcom/taobao/artc/utils/ArtcDeviceInfo;)Lcom/taobao/artc/utils/ArtcDeviceInfo;

    .line 620
    :cond_0
    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$38;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$400(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lorg/webrtc/VideoCapturer;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$38;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$2100(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    .line 621
    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$38;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$2100(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 622
    const-string/jumbo v1, "ArtcEngineImpl"

    const-string/jumbo v4, "stopPreview"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "stop video source."

    aput-object v7, v5, v6

    invoke-static {v1, v4, v5}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    :try_start_1
    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$38;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$400(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lorg/webrtc/VideoCapturer;

    move-result-object v1

    invoke-interface {v1}, Lorg/webrtc/VideoCapturer;->stopCapture()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 631
    :cond_1
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$38;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$400(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lorg/webrtc/VideoCapturer;

    move-result-object v1

    invoke-interface {v1}, Lorg/webrtc/VideoCapturer;->dispose()V

    .line 632
    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$38;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$402(Lcom/taobao/artc/internal/ArtcEngineImpl;Lorg/webrtc/VideoCapturer;)Lorg/webrtc/VideoCapturer;

    .line 633
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 634
    .local v2, "startDeInitTime":J
    const-string/jumbo v1, "ArtcEngineImpl"

    const-string/jumbo v4, "nativeUnInitialize start"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 636
    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$38;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$2200(Lcom/taobao/artc/internal/ArtcEngineImpl;)I

    .line 637
    const-string/jumbo v1, "ArtcEngineImpl"

    const-string/jumbo v4, "nativeUnInitialize end"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "cost(ms)"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v4, v5}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 639
    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$38;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$1600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lcom/taobao/artc/api/ArtcConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/artc/api/ArtcConfig;->protocal()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "accs"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 646
    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$38;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$2300(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljkc;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljkc;->a(I)V

    .line 647
    .end local v2    # "startDeInitTime":J
    :goto_1
    return-void

    .line 625
    :catch_0
    move-exception v0

    .line 626
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v1, "ArtcEngineImpl"

    const-string/jumbo v4, "stopPreview"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v4, v0, v5}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 643
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 644
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 646
    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$38;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$2300(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljkc;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljkc;->a(I)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$38;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$2300(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljkc;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljkc;->a(I)V

    throw v1
.end method
