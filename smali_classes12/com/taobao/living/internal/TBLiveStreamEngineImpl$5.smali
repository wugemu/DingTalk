.class final Lcom/taobao/living/internal/TBLiveStreamEngineImpl$5;
.super Ljava/lang/Object;
.source "TBLiveStreamEngineImpl.java"

# interfaces
.implements Lcom/taobao/artc/lwp/ArtcLWPChannel$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/living/internal/TBLiveStreamEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;


# direct methods
.method constructor <init>(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    .prologue
    .line 575
    iput-object p1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$5;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "s2"    # Ljava/lang/String;
    .param p4, "bytes"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 578
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$5;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$5;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->l(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 579
    const-string/jumbo v0, "TBLiveStreamEngineImpl"

    const-string/jumbo v1, "onSendLWPChannelData"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 580
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$5;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->l(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 582
    :cond_0
    return-void
.end method
