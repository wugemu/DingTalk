.class final Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;
.super Ljava/util/ArrayList;
.source "H5BizPluginList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/alipay/mobile/nebula/config/H5PluginConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    new-instance v0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string/jumbo v1, "android-phone-wallet-tinyappcommon"

    const-string/jumbo v2, "com.alipay.mobile.tinyappcommon.h5plugin.H5SystemInfoPlugin"

    const-string/jumbo v3, "page"

    const-string/jumbo v4, "getSystemInfo|watchShake"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string/jumbo v1, "android-phone-wallet-tinyappcommon"

    const-string/jumbo v2, "com.alipay.mobile.tinyappcommon.embedview.H5WebViewMessagePlugin"

    const-string/jumbo v3, "page"

    const-string/jumbo v4, "postWebViewMessage|getEmbedWebViewEnv"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string/jumbo v1, "android-phone-wallet-nebulauc"

    const-string/jumbo v2, "com.alipay.mobile.nebulauc.plugin.H5UCPlugin"

    const-string/jumbo v3, "page"

    const-string/jumbo v4, "setServiceWorkerID|clearServiceWorker|pushSWMessage|flushUcLog"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string/jumbo v1, "android-phone-wallet-tinyappservice"

    const-string/jumbo v2, "com.alipay.mobile.tinyappservice.h5plugin.ApiDynamicPermissionPlugin"

    const-string/jumbo v3, "page"

    const-string/jumbo v4, "internalAPI"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string/jumbo v1, "android-phone-wallet-tinyappcommon"

    const-string/jumbo v2, "com.alipay.mobile.tinyappcommon.h5plugin.H5WebSocketConnectPlugin"

    const-string/jumbo v3, "session"

    const-string/jumbo v4, "connectSocket"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string/jumbo v1, "android-phone-wallet-tinyappcommon"

    const-string/jumbo v2, "com.alipay.mobile.tinyappcommon.h5plugin.H5WebSocketClosePlugin"

    const-string/jumbo v3, "session"

    const-string/jumbo v4, "closeSocket"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string/jumbo v1, "android-phone-wallet-tinyappcommon"

    const-string/jumbo v2, "com.alipay.mobile.tinyappcommon.h5plugin.H5WebSocketSendMsgPlugin"

    const-string/jumbo v3, "session"

    const-string/jumbo v4, "sendSocketMessage"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method
