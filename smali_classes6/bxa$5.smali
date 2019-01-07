.class final Lbxa$5;
.super Ljava/lang/Object;
.source "PlayerListeners.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;


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
    .line 134
    iput-object p1, p0, Lbxa$5;->a:Lbxa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 2
    .param p1, "iMediaPlayer"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 137
    iget-object v0, p0, Lbxa$5;->a:Lbxa;

    const/4 v1, 0x1

    .line 1023
    iput-boolean v1, v0, Lbxa;->j:Z

    .line 138
    iget-object v0, p0, Lbxa$5;->a:Lbxa;

    .line 2023
    iget-object v0, v0, Lbxa;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .line 138
    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lbxa$5;->a:Lbxa;

    .line 3023
    iget-object v0, v0, Lbxa;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .line 139
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->setKeepScreenOn(Z)V

    .line 141
    :cond_0
    iget-object v0, p0, Lbxa$5;->a:Lbxa;

    invoke-static {v0}, Lbxa;->a(Lbxa;)V

    .line 142
    return-void
.end method
