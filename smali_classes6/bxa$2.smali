.class final Lbxa$2;
.super Ljava/lang/Object;
.source "PlayerListeners.java"

# interfaces
.implements Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;


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
    .line 93
    iput-object p1, p0, Lbxa$2;->a:Lbxa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 3
    .param p1, "iMediaPlayer"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 96
    iget-object v1, p0, Lbxa$2;->a:Lbxa;

    .line 1023
    iget-object v1, v1, Lbxa;->h:Ljava/util/ArrayList;

    .line 96
    if-eqz v1, :cond_0

    iget-object v1, p0, Lbxa$2;->a:Lbxa;

    .line 2023
    iget-object v1, v1, Lbxa;->h:Ljava/util/ArrayList;

    .line 96
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 97
    iget-object v1, p0, Lbxa$2;->a:Lbxa;

    .line 3023
    iget-object v1, v1, Lbxa;->h:Ljava/util/ArrayList;

    .line 97
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbwz;

    .line 98
    .local v0, "listener":Lbwz;
    invoke-interface {v0}, Lbwz;->b()V

    goto :goto_0

    .line 101
    .end local v0    # "listener":Lbwz;
    :cond_0
    iget-object v1, p0, Lbxa$2;->a:Lbxa;

    .line 4023
    iget-object v1, v1, Lbxa;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .line 101
    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Lbxa$2;->a:Lbxa;

    .line 5023
    iget-object v1, v1, Lbxa;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .line 102
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->setKeepScreenOn(Z)V

    .line 104
    :cond_1
    iget-object v1, p0, Lbxa$2;->a:Lbxa;

    invoke-static {v1}, Lbxa;->a(Lbxa;)V

    .line 105
    return-void
.end method
