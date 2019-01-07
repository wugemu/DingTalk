.class public Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerBridgeContext;
.super Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext;
.source "H5ServiceWorkerBridgeContext.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5ServiceWorkerBridgeContext"


# instance fields
.field private action:Ljava/lang/String;

.field private h5Bridge:Linx;

.field private h5Page:Liop;

.field private serviceWorkerHook4Bridge:Lipb;

.field private startTime:J


# direct methods
.method public constructor <init>(Lipb;Ljava/lang/String;Ljava/lang/String;Linx;Liop;)V
    .locals 2
    .param p1, "serviceWorkerHook4Bridge"    # Lipb;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "h5Bridge"    # Linx;
    .param p5, "h5Page"    # Liop;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerBridgeContext;->serviceWorkerHook4Bridge:Lipb;

    .line 36
    iput-object p3, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerBridgeContext;->action:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerBridgeContext;->id:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerBridgeContext;->h5Bridge:Linx;

    .line 39
    iput-object p5, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerBridgeContext;->h5Page:Liop;

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerBridgeContext;->startTime:J

    .line 41
    return-void
.end method


# virtual methods
.method public sendBack(Lcom/alibaba/fastjson/JSONObject;Z)Z
    .locals 6
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "keep"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 46
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerBridgeContext;->id:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "-1"

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerBridgeContext;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    :cond_0
    const-string/jumbo v2, "H5ServiceWorkerBridgeContext"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "client id not specified "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerBridgeContext;->action:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :goto_0
    return v1

    .line 51
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerBridgeContext;->id:Ljava/lang/String;

    const-string/jumbo v3, "native_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 52
    const-string/jumbo v2, "H5ServiceWorkerBridgeContext"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ignore native fired event "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerBridgeContext;->action:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerBridgeContext;->h5Page:Liop;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerBridgeContext;->h5Page:Liop;

    invoke-interface {v2}, Liop;->getPageData()Lior;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->enableJsApiPerformance()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 57
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerBridgeContext;->h5Page:Liop;

    invoke-interface {v2}, Liop;->getPageData()Lior;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerBridgeContext;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lior;->m(Ljava/lang/String;)Liol;

    move-result-object v0

    .line 58
    .local v0, "jsCallData":Liol;
    if-eqz v0, :cond_3

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerBridgeContext;->startTime:J

    sub-long/2addr v2, v4

    .line 1034
    iput-wide v2, v0, Liol;->b:J

    .line 63
    .end local v0    # "jsCallData":Liol;
    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerBridgeContext;->serviceWorkerHook4Bridge:Lipb;

    if-eqz v2, :cond_4

    .line 64
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerBridgeContext;->serviceWorkerHook4Bridge:Lipb;

    invoke-interface {v1, p1}, Lipb;->a(Lcom/alibaba/fastjson/JSONObject;)V

    .line 69
    const/4 v1, 0x1

    goto :goto_0

    .line 66
    :cond_4
    const-string/jumbo v2, "H5ServiceWorkerBridgeContext"

    const-string/jumbo v3, "[FATAL ERROR] in sendBack() bridge is null"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "param"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "callback"    # Lioa;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerBridgeContext;->h5Bridge:Linx;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerBridgeContext;->h5Bridge:Linx;

    invoke-interface {v0, p1, p2, p3}, Linx;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 77
    :cond_0
    return-void
.end method
