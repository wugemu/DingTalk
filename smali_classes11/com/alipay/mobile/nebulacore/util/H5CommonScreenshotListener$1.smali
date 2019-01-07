.class Lcom/alipay/mobile/nebulacore/util/H5CommonScreenshotListener$1;
.super Ljava/lang/Object;
.source "H5CommonScreenshotListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/util/H5CommonScreenshotListener;->onScreenShot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/util/H5CommonScreenshotListener;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/util/H5CommonScreenshotListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/util/H5CommonScreenshotListener;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/util/H5CommonScreenshotListener$1;->this$0:Lcom/alipay/mobile/nebulacore/util/H5CommonScreenshotListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 28
    :try_start_0
    const-string/jumbo v6, "h5_flush_ucLog"

    invoke-static {v6}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 29
    .local v5, "value":Ljava/lang/String;
    const-string/jumbo v6, "no"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 30
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v1

    .line 31
    .local v1, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Liop;

    move-result-object v0

    .line 33
    .local v0, "h5Page":Liop;
    if-eqz v0, :cond_0

    .line 34
    const-string/jumbo v6, "flushUcLog"

    const/4 v7, 0x0

    invoke-interface {v0, v6, v7}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 40
    .end local v0    # "h5Page":Liop;
    .end local v1    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->flushAppLog()V

    .line 43
    invoke-static {}, Lcom/alipay/mobile/nebulacore/dev/trace/H5PerformanceUtils;->getAllThreadsTraces()Ljava/util/List;

    move-result-object v4

    .line 44
    .local v4, "traces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_1

    .line 45
    const-string/jumbo v6, "H5CommonScreenshotListener"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "All Threads Traces: ###"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 47
    .local v3, "trace":Ljava/lang/String;
    const-string/jumbo v7, "H5CommonScreenshotListener"

    invoke-static {v7, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    .end local v3    # "trace":Ljava/lang/String;
    .end local v4    # "traces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 51
    .local v2, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v6, "H5CommonScreenshotListener"

    invoke-static {v6, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    .end local v2    # "throwable":Ljava/lang/Throwable;
    :cond_1
    return-void
.end method
