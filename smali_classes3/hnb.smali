.class public final Lhnb;
.super Lhmx;
.source "SimpleFileDownloader.java"


# instance fields
.field private a:Lcom/alibaba/doraemon/request/Request;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lhmx;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 23
    iget-object v1, p0, Lhnb;->a:Lcom/alibaba/doraemon/request/Request;

    if-eqz v1, :cond_1

    .line 24
    iget-object v1, p0, Lhnb;->f:Lhna$a;

    if-eqz v1, :cond_0

    .line 25
    const-string/jumbo v0, "cannot start file downloader more than once"

    .line 26
    .local v0, "errorMsg":Ljava/lang/String;
    iget-object v1, p0, Lhnb;->f:Lhna$a;

    const/16 v2, 0xc

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v0}, Lhna$a;->a(ILjava/lang/String;)V

    .line 33
    .end local v0    # "errorMsg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    const-string/jumbo v1, "REQUEST"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/request/Request;

    iput-object v1, p0, Lhnb;->a:Lcom/alibaba/doraemon/request/Request;

    .line 1045
    iget-object v1, p0, Lhnb;->a:Lcom/alibaba/doraemon/request/Request;

    iget-object v2, p0, Lhnb;->d:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/request/Request;->setRequestUrl(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v1

    iget-object v2, p0, Lhnb;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 1046
    invoke-static {v2}, Lhnb;->c(Lcom/alibaba/fastjson/JSONObject;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/request/Request;->setRequestHeaders(Ljava/util/Map;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lhnb;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1047
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/request/Request;->setCacheKey(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v1

    const/4 v2, 0x0

    .line 1048
    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/request/Request;->setCacheable(Z)Lcom/alibaba/doraemon/request/Request;

    move-result-object v1

    new-instance v2, Lhnb$1;

    invoke-direct {v2, p0}, Lhnb$1;-><init>(Lhnb;)V

    .line 1049
    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/request/Request;->setResponseReceiver(Lcom/alibaba/doraemon/request/ResponseReceiver;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v1

    .line 1126
    invoke-interface {v1}, Lcom/alibaba/doraemon/request/Request;->start()V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 37
    iget-object v0, p0, Lhnb;->a:Lcom/alibaba/doraemon/request/Request;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhnb;->a:Lcom/alibaba/doraemon/request/Request;

    invoke-interface {v0}, Lcom/alibaba/doraemon/request/Request;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    const-string/jumbo v0, "SimpleFileDownloader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "cancel task url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lhnb;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lhnb;->a:Lcom/alibaba/doraemon/request/Request;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/request/Request;->cancel(Z)Z

    .line 41
    :cond_0
    return-void
.end method
