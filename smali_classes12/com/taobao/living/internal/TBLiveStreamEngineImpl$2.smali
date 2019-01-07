.class final Lcom/taobao/living/internal/TBLiveStreamEngineImpl$2;
.super Ljava/lang/Object;
.source "TBLiveStreamEngineImpl.java"

# interfaces
.implements Lcom/taobao/taolive/TaoLive$OnErrorListener;


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
    .line 168
    iput-object p1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$2;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/taobao/taolive/TaoLive;II)Z
    .locals 6
    .param p1, "tl"    # Lcom/taobao/taolive/TaoLive;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 171
    const-string/jumbo v0, "TBLiveStreamEngineImpl"

    const-string/jumbo v1, "onError what = "

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    const-string/jumbo v4, ", extra = "

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$2;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->h(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    const/16 v0, 0x12

    if-ne p2, v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$2;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    sget-object v1, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;->TBLiveStreamStateConnectionRetry:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    invoke-static {v0, v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Lcom/taobao/living/api/TBConstants$TBLiveStreamState;)V

    .line 176
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$2;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->e(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$2;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->f(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;->a(Lcom/taobao/living/api/TBConstants$TBLiveStreamState;)V

    .line 189
    :cond_0
    :goto_0
    return v5

    .line 177
    :cond_1
    const/16 v0, 0x13

    if-ne p2, v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$2;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    sget-object v1, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;->TBLiveStreamStateConnectionRetry:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    invoke-static {v0, v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Lcom/taobao/living/api/TBConstants$TBLiveStreamState;)V

    .line 180
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$2;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->e(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$2;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->f(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;->a(Lcom/taobao/living/api/TBConstants$TBLiveStreamState;)V

    goto :goto_0

    .line 181
    :cond_2
    const/16 v0, 0x15

    if-ne p2, v0, :cond_3

    .line 182
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$2;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    sget-object v1, Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;->TBLiveStreamNetworkWorse:Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;

    invoke-static {v0, v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;)V

    .line 183
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$2;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->h(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$b;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$2;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->i(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$b;->a(Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;)V

    goto :goto_0

    .line 184
    :cond_3
    const/16 v0, 0x16

    if-ne p2, v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$2;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    sget-object v1, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;->TBLiveStreamStateError:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    invoke-static {v0, v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Lcom/taobao/living/api/TBConstants$TBLiveStreamState;)V

    .line 186
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$2;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->e(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$2;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->f(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;->a(Lcom/taobao/living/api/TBConstants$TBLiveStreamState;)V

    goto :goto_0
.end method
