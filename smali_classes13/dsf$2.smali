.class final Ldsf$2;
.super Ljava/lang/Object;
.source "VideoPlayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldsf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;JJLdsf$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:J

.field final synthetic d:J

.field final synthetic e:Ldsf$a;

.field final synthetic f:Ljava/util/Map;

.field final synthetic g:Ljava/util/Map;

.field final synthetic h:Ldsf;


# direct methods
.method constructor <init>(Ldsf;Ljava/lang/String;Landroid/content/Context;JJLdsf$a;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Ldsf;

    .prologue
    .line 216
    iput-object p1, p0, Ldsf$2;->h:Ldsf;

    iput-object p2, p0, Ldsf$2;->a:Ljava/lang/String;

    iput-object p3, p0, Ldsf$2;->b:Landroid/content/Context;

    iput-wide p4, p0, Ldsf$2;->c:J

    iput-wide p6, p0, Ldsf$2;->d:J

    iput-object p8, p0, Ldsf$2;->e:Ldsf$a;

    iput-object p9, p0, Ldsf$2;->f:Ljava/util/Map;

    iput-object p10, p0, Ldsf$2;->g:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 219
    const-string/jumbo v1, "CACHE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/doraemon/cache/Cache;

    .line 220
    .local v10, "cache":Lcom/alibaba/doraemon/cache/Cache;
    if-eqz v10, :cond_0

    iget-object v1, p0, Ldsf$2;->a:Ljava/lang/String;

    invoke-interface {v10, v1}, Lcom/alibaba/doraemon/cache/Cache;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Ldsf$2;->h:Ldsf;

    iget-object v2, p0, Ldsf$2;->b:Landroid/content/Context;

    iget-object v3, p0, Ldsf$2;->a:Ljava/lang/String;

    iget-wide v4, p0, Ldsf$2;->c:J

    iget-wide v6, p0, Ldsf$2;->d:J

    const/4 v8, 0x0

    iget-object v9, p0, Ldsf$2;->e:Ldsf$a;

    invoke-static/range {v1 .. v9}, Ldsf;->a(Ldsf;Landroid/content/Context;Ljava/lang/String;JJLcom/alibaba/doraemon/request/Response;Ldsf$a;)V

    .line 266
    :goto_0
    return-void

    .line 224
    :cond_0
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "video"

    const-string/jumbo v3, "loadCache2File load from internet"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string/jumbo v1, "REQUEST"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/request/Request;

    .line 227
    .local v0, "audioRequest":Lcom/alibaba/doraemon/request/Request;
    iget-object v1, p0, Ldsf$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/request/Request;->setCacheKey(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v1

    iget-object v2, p0, Ldsf$2;->h:Ldsf;

    .line 228
    invoke-static {v2}, Ldsf;->b(Ldsf;)Lcom/alibaba/doraemon/request/CacheClient;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/request/Request;->setCacheClient(Lcom/alibaba/doraemon/request/CacheClient;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v1

    iget-object v2, p0, Ldsf$2;->a:Ljava/lang/String;

    .line 229
    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/request/Request;->setRequestUrl(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v1

    sget-object v2, Lcom/alibaba/doraemon/Priority;->NORMAL:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/request/Request;->setPriority(Lcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v1

    iget-object v2, p0, Ldsf$2;->f:Ljava/util/Map;

    .line 230
    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/request/Request;->setRequestHeaders(Ljava/util/Map;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v1

    iget-object v2, p0, Ldsf$2;->g:Ljava/util/Map;

    .line 231
    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/request/Request;->setRequestParams(Ljava/util/Map;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v1

    new-instance v2, Ldsf$2$1;

    invoke-direct {v2, p0}, Ldsf$2$1;-><init>(Ldsf$2;)V

    .line 232
    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/request/Request;->setResponseReceiver(Lcom/alibaba/doraemon/request/ResponseReceiver;)Lcom/alibaba/doraemon/request/Request;

    .line 265
    invoke-interface {v0}, Lcom/alibaba/doraemon/request/Request;->start()V

    goto :goto_0
.end method
