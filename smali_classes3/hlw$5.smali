.class final Lhlw$5;
.super Ljava/lang/Object;
.source "MiniEmbedVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;


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
    .line 275
    iput-object p1, p0, Lhlw$5;->a:Lhlw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 3
    .param p1, "iMediaPlayer"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 277
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 278
    .local v0, "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "errorCode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string/jumbo v1, "errorMessage"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v1, p0, Lhlw$5;->a:Lhlw;

    const-string/jumbo v2, "nbcomponent.video.binderror"

    invoke-static {v1, v2, v0}, Lhlw;->a(Lhlw;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 281
    const/4 v1, 0x0

    return v1
.end method
