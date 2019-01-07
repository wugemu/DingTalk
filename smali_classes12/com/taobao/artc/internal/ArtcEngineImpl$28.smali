.class final Lcom/taobao/artc/internal/ArtcEngineImpl$28;
.super Ljava/lang/Object;
.source "ArtcEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/artc/internal/ArtcEngineImpl;->enableFaceBeauty(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/taobao/artc/internal/ArtcEngineImpl;


# direct methods
.method constructor <init>(Lcom/taobao/artc/internal/ArtcEngineImpl;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 1716
    iput-object p1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$28;->b:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iput-boolean p2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$28;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1719
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$28;->b:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$5400(Lcom/taobao/artc/internal/ArtcEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1720
    const-string/jumbo v0, "ArtcEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "enableBeauty, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$28;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1721
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$28;->b:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iget-boolean v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$28;->a:Z

    invoke-static {v0, v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$5500(Lcom/taobao/artc/internal/ArtcEngineImpl;Z)V

    .line 1766
    :cond_0
    return-void
.end method
