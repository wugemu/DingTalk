.class final Lhlw$6;
.super Ljava/lang/Object;
.source "MiniEmbedVideoView.java"

# interfaces
.implements Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhlw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhlw;


# direct methods
.method constructor <init>(Lhlw;)V
    .locals 0
    .param p1, "this$0"    # Lhlw;

    .prologue
    .line 285
    iput-object p1, p0, Lhlw$6;->a:Lhlw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a_(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 3
    .param p1, "iMediaPlayer"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 287
    iget-object v0, p0, Lhlw$6;->a:Lhlw;

    const-string/jumbo v1, "nbcomponent.video.bindplay"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lhlw;->a(Lhlw;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 288
    return-void
.end method
