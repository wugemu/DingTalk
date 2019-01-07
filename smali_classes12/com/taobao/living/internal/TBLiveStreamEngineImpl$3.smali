.class final Lcom/taobao/living/internal/TBLiveStreamEngineImpl$3;
.super Ljava/lang/Object;
.source "TBLiveStreamEngineImpl.java"

# interfaces
.implements Lcom/taobao/taolive/TaoLive$OnInfoListener;


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
    .line 193
    iput-object p1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$3;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInfo(Lcom/taobao/taolive/TaoLive;II)Z
    .locals 7
    .param p1, "tl"    # Lcom/taobao/taolive/TaoLive;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 196
    const-string/jumbo v0, "TBLiveStreamEngineImpl"

    const-string/jumbo v1, "onInfo what = "

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string/jumbo v3, ", extra = "

    aput-object v3, v2, v6

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$3;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->e(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    const/16 v0, 0x3a

    if-ne p2, v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$3;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->e(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;->a(Z)V

    .line 206
    :cond_0
    :goto_0
    return v5

    .line 200
    :cond_1
    const/16 v0, 0x3b

    if-ne p2, v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$3;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->e(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;->a(Z)V

    goto :goto_0

    .line 202
    :cond_2
    const/16 v0, 0xe

    if-ne p2, v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$3;->a:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->e(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;->a()V

    goto :goto_0
.end method
