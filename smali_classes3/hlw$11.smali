.class final Lhlw$11;
.super Ljava/lang/Object;
.source "MiniEmbedVideoView.java"

# interfaces
.implements Ljon$b;


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
    .line 334
    iput-object p1, p0, Lhlw$11;->a:Lhlw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 336
    iget-object v3, p0, Lhlw$11;->a:Lhlw;

    invoke-static {v3, v1}, Lhlw;->a(Lhlw;Z)Z

    .line 339
    iget-object v3, p0, Lhlw$11;->a:Lhlw;

    invoke-static {v3}, Lhlw;->b(Lhlw;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 340
    iget-object v3, p0, Lhlw$11;->a:Lhlw;

    invoke-static {v3, v1}, Lhlw;->b(Lhlw;Z)Z

    .line 341
    iget-object v3, p0, Lhlw$11;->a:Lhlw;

    invoke-static {v3, v2}, Lhlw;->c(Lhlw;Z)V

    .line 353
    :goto_0
    return v1

    .line 345
    :cond_0
    iget-object v3, p0, Lhlw$11;->a:Lhlw;

    invoke-static {v3}, Lhlw;->a(Lhlw;)Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 346
    iget-object v3, p0, Lhlw$11;->a:Lhlw;

    invoke-static {v3}, Lhlw;->a(Lhlw;)Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    move-result-object v3

    .line 1538
    iput-boolean v1, v3, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->E:Z

    .line 349
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 350
    .local v0, "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, "fullScreen"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    iget-object v1, p0, Lhlw$11;->a:Lhlw;

    const-string/jumbo v3, "nbcomponent.video.bindfullscreenchange"

    invoke-static {v1, v3, v0}, Lhlw;->a(Lhlw;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    move v1, v2

    .line 353
    goto :goto_0
.end method

.method public final h()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 357
    iget-object v2, p0, Lhlw$11;->a:Lhlw;

    invoke-static {v2, v1}, Lhlw;->a(Lhlw;Z)Z

    .line 359
    iget-object v2, p0, Lhlw$11;->a:Lhlw;

    invoke-static {v2}, Lhlw;->c(Lhlw;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 360
    iget-object v2, p0, Lhlw$11;->a:Lhlw;

    invoke-static {v2, v1}, Lhlw;->b(Lhlw;Z)Z

    .line 361
    const/4 v1, 0x1

    .line 376
    :goto_0
    return v1

    .line 364
    :cond_0
    iget-object v2, p0, Lhlw$11;->a:Lhlw;

    invoke-static {v2}, Lhlw;->a(Lhlw;)Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 365
    iget-object v2, p0, Lhlw$11;->a:Lhlw;

    invoke-static {v2}, Lhlw;->a(Lhlw;)Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    move-result-object v2

    .line 2538
    iput-boolean v1, v2, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->E:Z

    .line 368
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 369
    .local v0, "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "fullScreen"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v2, p0, Lhlw$11;->a:Lhlw;

    const-string/jumbo v3, "nbcomponent.video.bindfullscreenchange"

    invoke-static {v2, v3, v0}, Lhlw;->a(Lhlw;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 374
    iget-object v2, p0, Lhlw$11;->a:Lhlw;

    invoke-static {v2}, Lhlw;->d(Lhlw;)V

    goto :goto_0
.end method
