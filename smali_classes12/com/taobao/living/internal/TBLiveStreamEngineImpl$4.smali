.class final Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;
.super Lcom/taobao/artc/api/ArtcEngineEventHandler;
.source "TBLiveStreamEngineImpl.java"


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
    .line 210
    iput-object p1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-direct {p0}, Lcom/taobao/artc/api/ArtcEngineEventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnswer(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "answer"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 346
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->m(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/api/TBConstants$Role;

    move-result-object v0

    sget-object v1, Lcom/taobao/living/api/TBConstants$Role;->ANCHOR:Lcom/taobao/living/api/TBConstants$Role;

    if-eq v0, v1, :cond_0

    if-ne v2, p3, :cond_0

    .line 347
    const-string/jumbo v0, "TBLiveStreamEngineImpl"

    const-string/jumbo v1, "joinChannel:"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v4}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->n(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->j(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/artc/api/ArtcEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->n(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/artc/api/ArtcEngine;->joinChannel(Ljava/lang/String;)V

    .line 350
    :cond_0
    return-void
.end method

.method public final onAnswer2(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "answer"    # I
    .param p4, "option"    # Ljava/lang/String;
    .param p5, "extension"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 354
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->m(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/api/TBConstants$Role;

    move-result-object v0

    sget-object v1, Lcom/taobao/living/api/TBConstants$Role;->ANCHOR:Lcom/taobao/living/api/TBConstants$Role;

    if-eq v0, v1, :cond_0

    if-ne v2, p3, :cond_0

    .line 355
    const-string/jumbo v0, "TBLiveStreamEngineImpl"

    const-string/jumbo v1, "joinChannel:"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v4}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->n(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->j(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/artc/api/ArtcEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->n(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/artc/api/ArtcEngine;->joinChannel(Ljava/lang/String;)V

    .line 358
    :cond_0
    return-void
.end method

.method public final onAnswered(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "peerId"    # Ljava/lang/String;
    .param p4, "role"    # I
    .param p5, "answer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 472
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->l(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 473
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 474
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 475
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->c(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 476
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1, p5}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;I)I

    .line 477
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 478
    .local v0, "params":Ljava/util/Map;
    const-string/jumbo v1, "peerId"

    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v2}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->o(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    const-string/jumbo v1, "peerRole"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->l(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;

    move-result-object v2

    const/4 v1, 0x1

    if-ne p5, v1, :cond_1

    sget-object v1, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveRemoteAccept:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    :goto_0
    invoke-interface {v2, v1, v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;->a(Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;Ljava/util/Map;)V

    .line 483
    .end local v0    # "params":Ljava/util/Map;
    :cond_0
    return-void

    .line 480
    .restart local v0    # "params":Ljava/util/Map;
    :cond_1
    sget-object v1, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveRemoteReject:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    goto :goto_0
.end method

.method public final onAnswered2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "peerId"    # Ljava/lang/String;
    .param p4, "role"    # I
    .param p5, "answer"    # I
    .param p6, "option"    # Ljava/lang/String;
    .param p7, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 487
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->l(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 488
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 489
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 490
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->c(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 491
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1, p5}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;I)I

    .line 492
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 493
    .local v0, "params":Ljava/util/Map;
    const-string/jumbo v1, "peerId"

    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v2}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->o(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    const-string/jumbo v1, "peerRole"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    const-string/jumbo v1, "extension"

    invoke-interface {v0, v1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->l(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;

    move-result-object v2

    const/4 v1, 0x1

    if-ne p5, v1, :cond_1

    sget-object v1, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveRemoteAccept:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    :goto_0
    invoke-interface {v2, v1, v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;->a(Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;Ljava/util/Map;)V

    .line 499
    .end local v0    # "params":Ljava/util/Map;
    :cond_0
    return-void

    .line 496
    .restart local v0    # "params":Ljava/util/Map;
    :cond_1
    sget-object v1, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveRemoteReject:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    goto :goto_0
.end method

.method public final onAudioQuality(ISS)V
    .locals 0
    .param p1, "quality"    # I
    .param p2, "delay"    # S
    .param p3, "lost"    # S

    .prologue
    .line 312
    return-void
.end method

.method public final onAudioRouteChanged(I)V
    .locals 0
    .param p1, "routing"    # I

    .prologue
    .line 307
    return-void
.end method

.method public final onBlueToothDeviceDisconnected()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->e(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->e(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;

    .line 395
    :cond_0
    return-void
.end method

.method public final onBlueToothDeviceconnected()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .prologue
    .line 399
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->e(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->e(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;

    .line 402
    :cond_0
    return-void
.end method

.method public final onCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 406
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->l(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 408
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 409
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->c(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 410
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1, p4}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;I)I

    .line 411
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 412
    .local v0, "params":Ljava/util/Map;
    const-string/jumbo v1, "peerId"

    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v2}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->o(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    const-string/jumbo v1, "result"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    const/16 v1, 0xac

    if-ne p4, v1, :cond_1

    .line 415
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->l(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;

    move-result-object v1

    sget-object v2, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveLocalCallFailed:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    invoke-interface {v1, v2, v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;->a(Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;Ljava/util/Map;)V

    .line 420
    .end local v0    # "params":Ljava/util/Map;
    :cond_0
    :goto_0
    return-void

    .line 417
    .restart local v0    # "params":Ljava/util/Map;
    :cond_1
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->l(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;

    move-result-object v1

    sget-object v2, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveLocalCalling:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    invoke-interface {v1, v2, v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;->a(Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final onCall2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "result"    # I
    .param p5, "option"    # Ljava/lang/String;
    .param p6, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 424
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->l(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 426
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 427
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->c(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 428
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1, p4}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;I)I

    .line 429
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 430
    .local v0, "params":Ljava/util/Map;
    const-string/jumbo v1, "peerId"

    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v2}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->o(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    const-string/jumbo v1, "result"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    const-string/jumbo v1, "extension"

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    const/16 v1, 0xac

    if-ne p4, v1, :cond_1

    .line 434
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->l(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;

    move-result-object v1

    sget-object v2, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveLocalCallFailed:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    invoke-interface {v1, v2, v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;->a(Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;Ljava/util/Map;)V

    .line 439
    .end local v0    # "params":Ljava/util/Map;
    :cond_0
    :goto_0
    return-void

    .line 436
    .restart local v0    # "params":Ljava/util/Map;
    :cond_1
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->l(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;

    move-result-object v1

    sget-object v2, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveLocalCalling:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    invoke-interface {v1, v2, v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;->a(Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final onCallTimeout()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 362
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->l(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->l(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;

    move-result-object v0

    sget-object v1, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveLocalCallTimeOut:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;->a(Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;Ljava/util/Map;)V

    .line 365
    :cond_0
    return-void
.end method

.method public final onCalled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "peerId"    # Ljava/lang/String;
    .param p4, "role"    # I
    .param p5, "isVideoCall"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 443
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->l(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 444
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 445
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 446
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->c(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 447
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1, p5}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;I)I

    .line 448
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 449
    .local v0, "params":Ljava/util/Map;
    const-string/jumbo v1, "peerId"

    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v2}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->o(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    const-string/jumbo v1, "peerRole"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->l(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;

    move-result-object v1

    sget-object v2, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveLocalCalled:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    invoke-interface {v1, v2, v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;->a(Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;Ljava/util/Map;)V

    .line 453
    .end local v0    # "params":Ljava/util/Map;
    :cond_0
    return-void
.end method

.method public final onCalled2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "peerId"    # Ljava/lang/String;
    .param p4, "role"    # I
    .param p5, "isVideoCall"    # I
    .param p6, "option"    # Ljava/lang/String;
    .param p7, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 457
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->l(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 458
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 459
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 460
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->c(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 461
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1, p5}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;I)I

    .line 462
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 463
    .local v0, "params":Ljava/util/Map;
    const-string/jumbo v1, "peerId"

    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v2}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->o(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    const-string/jumbo v1, "peerRole"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    const-string/jumbo v1, "extension"

    invoke-interface {v0, v1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->l(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;

    move-result-object v1

    sget-object v2, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveLocalCalled:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    invoke-interface {v1, v2, v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;->a(Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;Ljava/util/Map;)V

    .line 468
    .end local v0    # "params":Ljava/util/Map;
    :cond_0
    return-void
.end method

.method public final onCameraSwitchDone(Z)V
    .locals 0
    .param p1, "b"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .prologue
    .line 370
    return-void
.end method

.method public final onCancelCall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "remoteUserId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 534
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->l(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 535
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 536
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->c(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 537
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 538
    .local v0, "params":Ljava/util/Map;
    const-string/jumbo v1, "peerId"

    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v2}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->o(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->l(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;

    move-result-object v1

    sget-object v2, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveRemoteCancel:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    invoke-interface {v1, v2, v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;->a(Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;Ljava/util/Map;)V

    .line 541
    .end local v0    # "params":Ljava/util/Map;
    :cond_0
    return-void
.end method

.method public final onCanceledCall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "remoteUserId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .prologue
    .line 546
    return-void
.end method

.method public final onCanceledCall2(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "remoteUserId"    # Ljava/lang/String;
    .param p3, "reason"    # I
    .param p4, "option"    # Ljava/lang/String;
    .param p5, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 550
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->l(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 551
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 552
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->c(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 553
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 554
    .local v0, "params":Ljava/util/Map;
    const-string/jumbo v1, "peerId"

    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v2}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->o(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    const-string/jumbo v1, "extension"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->l(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;

    move-result-object v1

    sget-object v2, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveRemoteCancel:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    invoke-interface {v1, v2, v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;->a(Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;Ljava/util/Map;)V

    .line 558
    .end local v0    # "params":Ljava/util/Map;
    :cond_0
    return-void
.end method

.method public final onChannelClosed(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "i"    # I

    .prologue
    .line 231
    return-void
.end method

.method public final onChannelClosed2(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "i"    # I
    .param p4, "option"    # Ljava/lang/String;
    .param p5, "extension"    # Ljava/lang/String;

    .prologue
    .line 236
    return-void
.end method

.method public final onChannelIdUpdated(Ljava/lang/String;)V
    .locals 1
    .param p1, "channelString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 275
    return-void
.end method

.method public final onConnectionInterrupted()V
    .locals 0

    .prologue
    .line 332
    return-void
.end method

.method public final onConnectionLost()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 374
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->e(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    sget-object v1, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;->TBLiveStreamStateError:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    invoke-static {v0, v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Lcom/taobao/living/api/TBConstants$TBLiveStreamState;)V

    .line 376
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->e(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->f(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;->a(Lcom/taobao/living/api/TBConstants$TBLiveStreamState;)V

    .line 378
    :cond_0
    return-void
.end method

.method public final onCreateChannelSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "channelId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 218
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->j(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/artc/api/ArtcEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->j(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/artc/api/ArtcEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->k(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/artc/api/ArtcEngine;->joinChannel(Ljava/lang/String;)V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->e(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    sget-object v1, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;->TBLiveStreamStateStarted:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    invoke-static {v0, v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Lcom/taobao/living/api/TBConstants$TBLiveStreamState;)V

    .line 224
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->e(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->f(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;->a(Lcom/taobao/living/api/TBConstants$TBLiveStreamState;)V

    .line 226
    :cond_1
    return-void
.end method

.method public final onError(Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;I)V
    .locals 0
    .param p1, "artcErrorEvent"    # Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;
    .param p2, "i"    # I

    .prologue
    .line 302
    return-void
.end method

.method public final onFirstLocalVideoFrame(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 383
    return-void
.end method

.method public final onFirstRemoteVideoFrame(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 388
    return-void
.end method

.method public final onInvited(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .prologue
    .line 337
    return-void
.end method

.method public final onInvited2(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "i"    # I
    .param p4, "option"    # Ljava/lang/String;
    .param p5, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .prologue
    .line 342
    return-void
.end method

.method public final onJoinChannelSuccess(I)V
    .locals 2
    .param p1, "elapsed"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 240
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->e(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    sget-object v1, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;->TBLiveStreamStateConnected:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    invoke-static {v0, v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Lcom/taobao/living/api/TBConstants$TBLiveStreamState;)V

    .line 242
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->e(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->f(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;->a(Lcom/taobao/living/api/TBConstants$TBLiveStreamState;)V

    .line 244
    :cond_0
    return-void
.end method

.method public final onKicked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "remoteUserId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 503
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->l(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 504
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 505
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->c(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 506
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 507
    .local v0, "params":Ljava/util/Map;
    const-string/jumbo v1, "peerId"

    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v2}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->o(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->l(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;

    move-result-object v1

    sget-object v2, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveRemoteEnd:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    invoke-interface {v1, v2, v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;->a(Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;Ljava/util/Map;)V

    .line 509
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->m(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/api/TBConstants$Role;

    move-result-object v1

    sget-object v2, Lcom/taobao/living/api/TBConstants$Role;->ANCHOR:Lcom/taobao/living/api/TBConstants$Role;

    if-eq v1, v2, :cond_0

    .line 510
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->j(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/artc/api/ArtcEngine;

    move-result-object v1

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/taobao/artc/api/ArtcEngine;->leaveChannel2(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    .end local v0    # "params":Ljava/util/Map;
    :cond_0
    return-void
.end method

.method public final onKicked2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "remoteUserId"    # Ljava/lang/String;
    .param p3, "option"    # Ljava/lang/String;
    .param p4, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 518
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->l(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 519
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 520
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->c(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 521
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 522
    .local v0, "params":Ljava/util/Map;
    const-string/jumbo v1, "peerId"

    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v2}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->o(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    const-string/jumbo v1, "extension"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->l(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;

    move-result-object v1

    sget-object v2, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveRemoteEnd:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    invoke-interface {v1, v2, v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;->a(Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;Ljava/util/Map;)V

    .line 525
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->m(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/api/TBConstants$Role;

    move-result-object v1

    sget-object v2, Lcom/taobao/living/api/TBConstants$Role;->ANCHOR:Lcom/taobao/living/api/TBConstants$Role;

    if-eq v1, v2, :cond_0

    .line 526
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->j(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/artc/api/ArtcEngine;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lcom/taobao/artc/api/ArtcEngine;->leaveChannel2(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    .end local v0    # "params":Ljava/util/Map;
    :cond_0
    return-void
.end method

.method public final onLastmileQuality(I)V
    .locals 2
    .param p1, "quality"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 562
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->h(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 563
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 564
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    sget-object v1, Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;->TBLiveStreamNetworkWorse:Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;

    invoke-static {v0, v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;)V

    .line 570
    :goto_0
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->h(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$b;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->i(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$b;->a(Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;)V

    .line 572
    :cond_0
    return-void

    .line 565
    :cond_1
    const/4 v0, 0x1

    if-ne v0, p1, :cond_2

    .line 566
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    sget-object v1, Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;->TBLiveStreamNetworkNormal:Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;

    invoke-static {v0, v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;)V

    goto :goto_0

    .line 568
    :cond_2
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    sget-object v1, Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;->TBLiveStreamNetworkExcellent:Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;

    invoke-static {v0, v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;)V

    goto :goto_0
.end method

.method public final onLeaveChannel(Lcom/taobao/artc/api/ArtcStats;)V
    .locals 0
    .param p1, "artcStats"    # Lcom/taobao/artc/api/ArtcStats;

    .prologue
    .line 280
    return-void
.end method

.method public final onLeaveChannel2(Lcom/taobao/artc/api/ArtcStats;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "artcStats"    # Lcom/taobao/artc/api/ArtcStats;
    .param p2, "option"    # Ljava/lang/String;
    .param p3, "extension"    # Ljava/lang/String;

    .prologue
    .line 285
    return-void
.end method

.method public final onLocalVideoStats(Lcom/taobao/artc/api/LocalVideoStats;)V
    .locals 3
    .param p1, "localVideoStats"    # Lcom/taobao/artc/api/LocalVideoStats;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 321
    const-string/jumbo v0, "TBLiveStreamEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "localVideoStats:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    return-void
.end method

.method public final onRemoteVideoStats(Lcom/taobao/artc/api/RemoteVideoStats;)V
    .locals 3
    .param p1, "remoteVideoStats"    # Lcom/taobao/artc/api/RemoteVideoStats;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 326
    const-string/jumbo v0, "TBLiveStreamEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "remoteVideoStats:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    return-void
.end method

.method public final onRtcStats(Lcom/taobao/artc/api/ArtcStats;)V
    .locals 0
    .param p1, "artcStats"    # Lcom/taobao/artc/api/ArtcStats;

    .prologue
    .line 317
    return-void
.end method

.method public final onSignalChannelAvailable()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method public final onUserJoinedChannel(Ljava/lang/String;)V
    .locals 0
    .param p1, "remoteUserId"    # Ljava/lang/String;

    .prologue
    .line 249
    return-void
.end method

.method public final onUserLeftChannel(Ljava/lang/String;I)V
    .locals 3
    .param p1, "remoteUserId"    # Ljava/lang/String;
    .param p2, "reason"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 253
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->l(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 254
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 255
    .local v0, "params":Ljava/util/Map;
    const-string/jumbo v1, "peerId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string/jumbo v1, "reason"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->l(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;

    move-result-object v1

    sget-object v2, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveRemoteEnd:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    invoke-interface {v1, v2, v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;->a(Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;Ljava/util/Map;)V

    .line 259
    .end local v0    # "params":Ljava/util/Map;
    :cond_0
    return-void
.end method

.method public final onUserLeftChannel2(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "remoteUserId"    # Ljava/lang/String;
    .param p2, "reason"    # I
    .param p3, "option"    # Ljava/lang/String;
    .param p4, "extension"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 263
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->l(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 264
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 265
    .local v0, "params":Ljava/util/Map;
    const-string/jumbo v1, "peerId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string/jumbo v1, "reason"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string/jumbo v1, "extension"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->l(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;

    move-result-object v1

    sget-object v2, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveRemoteEnd:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    invoke-interface {v1, v2, v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;->a(Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;Ljava/util/Map;)V

    .line 270
    .end local v0    # "params":Ljava/util/Map;
    :cond_0
    return-void
.end method

.method public final onUserOffline(Ljava/lang/String;I)V
    .locals 3
    .param p1, "remoteUserId"    # Ljava/lang/String;
    .param p2, "reason"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 289
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->l(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->l(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 291
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 292
    .local v0, "params":Ljava/util/Map;
    const-string/jumbo v1, "peerId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string/jumbo v1, "reason"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->l(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;

    move-result-object v1

    sget-object v2, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveRemoteEnd:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    invoke-interface {v1, v2, v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;->a(Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;Ljava/util/Map;)V

    .line 297
    .end local v0    # "params":Ljava/util/Map;
    :cond_0
    return-void
.end method
