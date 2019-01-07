.class public Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerPageManager;
.super Ljava/lang/Object;
.source "H5ServiceWorkerPageManager.java"


# static fields
.field private static instance:Liop;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Liop;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    const-class v2, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerPageManager;

    monitor-enter v2

    if-nez p0, :cond_0

    .line 22
    :try_start_0
    const-string/jumbo v1, ""

    const-string/jumbo v3, "getTopActivity==null"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerPageManager;->instance:Liop;

    if-nez v1, :cond_1

    .line 26
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 27
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "appId"

    const-string/jumbo v3, "60000002"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string/jumbo v1, "url"

    const-string/jumbo v3, "https://www.alipay.com"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string/jumbo v1, "u"

    const-string/jumbo v3, "https://www.alipay.com"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v1, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v0}, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;-><init>(Landroid/content/Context;Linx;Landroid/os/Bundle;)V

    sput-object v1, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerPageManager;->instance:Liop;

    .line 32
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerPageManager;->initServicePlug()V

    .line 34
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    sget-object v1, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerPageManager;->instance:Liop;

    instance-of v1, v1, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;

    if-eqz v1, :cond_2

    .line 35
    sget-object v1, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerPageManager;->instance:Liop;

    check-cast v1, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;

    invoke-virtual {v1, p0}, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->setH5Context(Landroid/content/Context;)V

    .line 37
    :cond_2
    sget-object v1, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerPageManager;->instance:Liop;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 21
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static initServicePlug()V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v0

    .line 44
    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->initServicePlugin()V

    .line 48
    :cond_0
    return-void
.end method
