.class public interface abstract Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;
.super Ljava/lang/Object;
.source "H5DevDebugProvider.java"


# virtual methods
.method public abstract consoleLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract eventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getScheduler()Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler",
            "<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract jsApiLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract netWorkLog(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
.end method

.method public abstract onRelease()V
.end method

.method public abstract pageLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
.end method

.method public abstract screenshot(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setPageUrl(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setPkgInfo(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
.end method

.method public abstract setSessionId(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setTitle(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setUserAgent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract welcome(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
