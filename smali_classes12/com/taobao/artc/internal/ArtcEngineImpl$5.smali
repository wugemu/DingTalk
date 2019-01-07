.class final Lcom/taobao/artc/internal/ArtcEngineImpl$5;
.super Ljava/lang/Object;
.source "ArtcEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/artc/internal/ArtcEngineImpl;->startPreview2(Ljava/lang/String;)V
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
    .line 1022
    iput-object p1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$5;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1025
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$5;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$400(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lorg/webrtc/VideoCapturer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$5;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$2100(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1026
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "startPreview"

    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "start video source."

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1028
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$5;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$2800(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$5;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$2900(Lcom/taobao/artc/internal/ArtcEngineImpl;)I

    .line 1031
    :cond_0
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$5;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$2100(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1032
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$5;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$400(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lorg/webrtc/VideoCapturer;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$5;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$3000(Lcom/taobao/artc/internal/ArtcEngineImpl;)I

    move-result v1

    iget-object v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$5;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v2}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$3100(Lcom/taobao/artc/internal/ArtcEngineImpl;)I

    move-result v2

    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$5;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v3}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$3200(Lcom/taobao/artc/internal/ArtcEngineImpl;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lorg/webrtc/VideoCapturer;->startCapture(III)V

    .line 1033
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "startPreview"

    new-array v2, v4, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "java start camera preview: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$5;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$3000(Lcom/taobao/artc/internal/ArtcEngineImpl;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$5;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$3100(Lcom/taobao/artc/internal/ArtcEngineImpl;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1036
    :cond_1
    return-void
.end method
