.class final Lbxa$6;
.super Ljava/lang/Object;
.source "PlayerListeners.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxa;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbxa;


# direct methods
.method constructor <init>(Lbxa;)V
    .locals 0
    .param p1, "this$0"    # Lbxa;

    .prologue
    .line 147
    iput-object p1, p0, Lbxa$6;->a:Lbxa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 8
    .param p1, "iMediaPlayer"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 150
    const-string/jumbo v1, "live"

    const/4 v2, 0x0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "video status onError, what="

    aput-object v4, v3, v7

    const/4 v4, 0x1

    .line 151
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, ", extra="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 150
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lbxa$6;->a:Lbxa;

    .line 1023
    iput-boolean v7, v1, Lbxa;->j:Z

    .line 153
    iget-object v1, p0, Lbxa$6;->a:Lbxa;

    .line 2023
    iget-object v1, v1, Lbxa;->h:Ljava/util/ArrayList;

    .line 153
    if-eqz v1, :cond_0

    iget-object v1, p0, Lbxa$6;->a:Lbxa;

    .line 3023
    iget-object v1, v1, Lbxa;->h:Ljava/util/ArrayList;

    .line 153
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 154
    iget-object v1, p0, Lbxa$6;->a:Lbxa;

    .line 4023
    iget-object v1, v1, Lbxa;->h:Ljava/util/ArrayList;

    .line 154
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbwz;

    .line 155
    .local v0, "listener":Lbwz;
    invoke-interface {v0, p2, p3}, Lbwz;->a(II)Z

    goto :goto_0

    .line 159
    .end local v0    # "listener":Lbwz;
    :cond_0
    iget-object v1, p0, Lbxa$6;->a:Lbxa;

    .line 5023
    iget-object v1, v1, Lbxa;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .line 159
    if-eqz v1, :cond_1

    .line 160
    iget-object v1, p0, Lbxa$6;->a:Lbxa;

    .line 6023
    iget-object v1, v1, Lbxa;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .line 160
    invoke-virtual {v1, v7}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->setKeepScreenOn(Z)V

    .line 162
    :cond_1
    iget-object v1, p0, Lbxa$6;->a:Lbxa;

    invoke-static {v1}, Lbxa;->a(Lbxa;)V

    .line 163
    return v7
.end method
