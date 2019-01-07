.class final Lhlw$10;
.super Ljava/lang/Object;
.source "MiniEmbedVideoView.java"

# interfaces
.implements Ljon$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhlw;->a(Z)V
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
    .line 324
    iput-object p1, p0, Lhlw$10;->a:Lhlw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3
    .param p1, "currentTime"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 326
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 327
    .local v0, "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "currentTime"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    iget-object v1, p0, Lhlw$10;->a:Lhlw;

    invoke-static {v1}, Lhlw;->a(Lhlw;)Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 329
    const-string/jumbo v1, "duration"

    iget-object v2, p0, Lhlw$10;->a:Lhlw;

    invoke-static {v2}, Lhlw;->a(Lhlw;)Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getDuration()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :cond_0
    iget-object v1, p0, Lhlw$10;->a:Lhlw;

    const-string/jumbo v2, "nbcomponent.video.bindtimeupdate"

    invoke-static {v1, v2, v0}, Lhlw;->a(Lhlw;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 332
    return-void
.end method
