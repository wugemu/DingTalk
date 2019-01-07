.class final Lcom/taobao/living/internal/TBLiveStreamEngineImpl$1;
.super Ljava/lang/Object;
.source "TBLiveStreamEngineImpl.java"

# interfaces
.implements Lcom/taobao/taolive/TaoLive$OnPreparedListener;


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
    .line 142
    iput-object p1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$1;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Lcom/taobao/taolive/TaoLive;Z)V
    .locals 4
    .param p1, "tl"    # Lcom/taobao/taolive/TaoLive;
    .param p2, "status"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 145
    if-nez p2, :cond_1

    .line 146
    const-string/jumbo v0, "TBLiveStreamEngineImpl"

    const-string/jumbo v1, "onPrepared failed!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    const-string/jumbo v0, "TBLiveStreamEngineImpl"

    const-string/jumbo v1, "onPrepared finished!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$1;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$1;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->c(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    const-string/jumbo v0, "TBLiveStreamEngineImpl"

    const-string/jumbo v1, "startSendAudio startSendVideo"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$1;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/taolive/TaoLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/taolive/TaoLive;->startSendAudio()I

    .line 153
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$1;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/taolive/TaoLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/taolive/TaoLive;->startSendVideo()I

    .line 154
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$1;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Z)Z

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$1;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->e(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 157
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$1;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    sget-object v1, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;->TBLiveStreamStateStarted:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    invoke-static {v0, v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Lcom/taobao/living/api/TBConstants$TBLiveStreamState;)V

    .line 158
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$1;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->e(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$1;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->f(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;->a(Lcom/taobao/living/api/TBConstants$TBLiveStreamState;)V

    .line 159
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$1;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->g(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)V

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$1;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->e(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$1;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    sget-object v1, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;->TBLiveStreamStateConnected:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    invoke-static {v0, v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Lcom/taobao/living/api/TBConstants$TBLiveStreamState;)V

    .line 163
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$1;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->e(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$1;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->f(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;->a(Lcom/taobao/living/api/TBConstants$TBLiveStreamState;)V

    goto/16 :goto_0
.end method
