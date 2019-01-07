.class public Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;
.super Lcom/mybank/android/phone/common/service/api/DeviceService;
.source "DeviceServiceImpl.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/mybank/android/phone/common/service/api/DeviceService;-><init>(Landroid/content/Context;)V

    .line 70
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;->a:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;->b:Z

    .line 77
    return-void
.end method

.method private static a()I
    .locals 3

    .prologue
    .line 206
    const/4 v0, 0x0

    .line 208
    .local v0, "envMode":I
    invoke-static {}, Ljev;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "dev-server"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljev;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "stable-server"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 209
    :cond_0
    const/4 v0, 0x1

    .line 217
    :cond_1
    :goto_0
    return v0

    .line 210
    :cond_2
    invoke-static {}, Ljev;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sit-server"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 211
    const/4 v0, 0x3

    goto :goto_0

    .line 212
    :cond_3
    invoke-static {}, Ljev;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "pre-server"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 213
    const/4 v0, 0x2

    goto :goto_0

    .line 214
    :cond_4
    invoke-static {}, Ljev;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "online-server"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;)V
    .locals 5
    .param p0, "x0"    # Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;
    .param p1, "x1"    # Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    .prologue
    .line 68
    .line 17152
    const-class v0, Lcom/mybank/android/phone/common/service/api/RpcService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mybank/android/phone/common/service/api/ServiceManager;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mybank/android/phone/common/service/api/RpcService;

    .line 17153
    if-eqz v0, :cond_0

    .line 17154
    invoke-virtual {v0}, Lcom/mybank/android/phone/common/service/api/RpcService;->getConfig()Lcom/alipay/android/phone/mrpc/core/Config;

    move-result-object v0

    .line 17155
    if-eqz v0, :cond_0

    .line 17156
    invoke-interface {v0}, Lcom/alipay/android/phone/mrpc/core/Config;->getRpcParams()Lcom/alipay/android/phone/mrpc/core/RpcParams;

    move-result-object v0

    .line 17157
    if-eqz v0, :cond_0

    .line 17158
    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/RpcParams;->getHeaders()Ljava/util/List;

    move-result-object v2

    .line 17159
    if-eqz v2, :cond_0

    .line 17160
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 17161
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    .line 17162
    const-string/jumbo v3, "apdidToken"

    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17163
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v3, "apdidToken"

    iget-object v4, p1, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdidToken:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17164
    invoke-interface {v2, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17165
    :cond_0
    return-void

    .line 17160
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;Ljava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    .line 17197
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;

    .prologue
    .line 68
    invoke-static {}, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;->a()I

    move-result v0

    return v0
.end method

.method private b()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 248
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 249
    .local v1, "infoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 250
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Litr;->a(Landroid/content/Context;)Litr;

    move-result-object v2

    .line 253
    .local v2, "locationInfo":Litr;
    const-string/jumbo v3, "longitude"

    .line 3000
    iget-object v5, v2, Litr;->b:Ljava/lang/String;

    .line 253
    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string/jumbo v3, "latitude"

    .line 4000
    iget-object v5, v2, Litr;->c:Ljava/lang/String;

    .line 254
    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string/jumbo v3, "wifiMac"

    .line 5000
    iget-object v5, v2, Litr;->d:Ljava/lang/String;

    .line 255
    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6000
    iget-object v3, v2, Litr;->e:Ljava/lang/String;

    .line 256
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 258
    :try_start_0
    const-string/jumbo v3, "ssid"

    new-instance v5, Ljava/lang/String;

    .line 7000
    iget-object v6, v2, Litr;->e:Ljava/lang/String;

    .line 258
    const/4 v7, 0x2

    invoke-static {v6, v7}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :cond_0
    :goto_0
    const-string/jumbo v3, "wificonn"

    .line 8000
    iget-object v5, v2, Litr;->f:Ljava/lang/String;

    .line 263
    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string/jumbo v3, "rssi"

    .line 9000
    iget-object v5, v2, Litr;->g:Ljava/lang/String;

    .line 264
    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string/jumbo v3, "mcc"

    .line 10000
    iget-object v5, v2, Litr;->h:Ljava/lang/String;

    .line 265
    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string/jumbo v3, "mnc"

    .line 11000
    iget-object v5, v2, Litr;->i:Ljava/lang/String;

    .line 266
    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string/jumbo v3, "cid"

    .line 12000
    iget-object v5, v2, Litr;->j:Ljava/lang/String;

    .line 267
    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string/jumbo v3, "lac"

    .line 13000
    iget-object v5, v2, Litr;->k:Ljava/lang/String;

    .line 268
    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string/jumbo v3, "cellRssi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 14000
    iget v6, v2, Litr;->l:I

    int-to-double v6, v6

    .line 269
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string/jumbo v5, "cellConn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 15000
    iget v3, v2, Litr;->l:I

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    .line 271
    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-virtual {v2}, Litr;->a()Ljava/util/List;

    .line 274
    const-string/jumbo v3, "wifiInfos"

    invoke-virtual {v2}, Litr;->a()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string/jumbo v5, "lbsOpen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 16000
    iget-object v3, v2, Litr;->a:Landroid/content/Context;

    if-nez v3, :cond_3

    .line 277
    :cond_1
    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string/jumbo v3, "wifConnectBypassword"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Litr;->b()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string/jumbo v3, "ip"

    invoke-virtual {p0}, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Litr;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string/jumbo v3, "ua"

    const-string/jumbo v4, "alibank-deviceinfo-1"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string/jumbo v3, "wifis"

    const-string/jumbo v4, ""

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string/jumbo v3, "sensors"

    invoke-static {v0}, Litu;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    invoke-static {}, Lito;->a()Lito;

    .line 292
    const-string/jumbo v3, "currentMobileOperator"

    invoke-virtual {p0}, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lito;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    invoke-static {}, Litq;->a()Litq;

    .line 297
    const-string/jumbo v3, "accessWirelessNetType"

    invoke-virtual {p0}, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Litq;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    return-object v1

    :cond_2
    move v3, v4

    .line 15000
    goto/16 :goto_1

    .line 16000
    :cond_3
    iget-object v3, v2, Litr;->a:Landroid/content/Context;

    const-string/jumbo v7, "location"

    invoke-virtual {v3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    if-eqz v3, :cond_1

    const-string/jumbo v4, "gps"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v4

    goto/16 :goto_2

    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;)V
    .locals 2
    .param p0, "x0"    # Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;
    .param p1, "x1"    # Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    .prologue
    .line 68
    .line 17180
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl$3;

    invoke-direct {v1, p0}, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl$3;-><init>(Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 17193
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 68
    return-void
.end method

.method static synthetic c(Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private c()Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v14, 0x0

    .line 305
    invoke-virtual {p0}, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 306
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lito;->a()Lito;

    move-result-object v2

    .line 307
    .local v2, "deviceInfo":Lito;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 309
    .local v5, "infoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v10, "imei"

    invoke-static {v0}, Lito;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string/jumbo v10, "imsi"

    invoke-static {v0}, Lito;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string/jumbo v10, "sens"

    invoke-static {v0}, Lito;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string/jumbo v10, "px"

    invoke-static {v0}, Lito;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string/jumbo v10, "w"

    invoke-static {v0}, Lito;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const-string/jumbo v10, "h"

    invoke-static {v0}, Lito;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const-string/jumbo v10, "mac"

    invoke-static {v0}, Lito;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string/jumbo v10, "iccid"

    invoke-static {v0}, Lito;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string/jumbo v10, "gsid"

    invoke-static {v0}, Lito;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string/jumbo v10, "cpuid"

    invoke-static {}, Lito;->e()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string/jumbo v10, "cpuCoreNum"

    invoke-virtual {v2}, Lito;->g()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string/jumbo v10, "cpuFrequency"

    invoke-virtual {v2}, Lito;->h()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string/jumbo v10, "memory"

    invoke-static {}, Lito;->j()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string/jumbo v10, "hardDisk"

    invoke-static {}, Lito;->k()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string/jumbo v10, "sdCard"

    invoke-static {}, Lito;->l()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string/jumbo v10, "vkey"

    const-string/jumbo v11, ""

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const-string/jumbo v10, "bluetoothMac"

    invoke-virtual {v2}, Lito;->n()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const-string/jumbo v10, "bluetoothOpen"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lito;->m()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const-string/jumbo v10, "idfa"

    const-string/jumbo v11, ""

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string/jumbo v10, "utdid"

    invoke-static {v0}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string/jumbo v10, "appList"

    const-string/jumbo v11, ""

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string/jumbo v10, "vendorId"

    const-string/jumbo v11, ""

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string/jumbo v10, "timeZone"

    invoke-static {}, Lito;->t()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string/jumbo v10, "language"

    invoke-static {}, Lito;->r()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    invoke-virtual {p0}, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v8

    .line 346
    .local v8, "tokenResult":Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;
    if-eqz v8, :cond_0

    .line 347
    const-string/jumbo v10, "apdidToken"

    iget-object v11, v8, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdidToken:Ljava/lang/String;

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string/jumbo v10, "umidToken"

    iget-object v11, v8, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->umidToken:Ljava/lang/String;

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string/jumbo v10, "apdid"

    iget-object v11, v8, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdid:Ljava/lang/String;

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, "createTime":Ljava/lang/String;
    const-string/jumbo v10, "clientKey"

    iget-object v11, v8, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->clientKey:Ljava/lang/String;

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const-string/jumbo v10, "createTime"

    invoke-interface {v5, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string/jumbo v10, "ApInfo"

    invoke-virtual {v0, v10, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 354
    .local v7, "preference":Landroid/content/SharedPreferences;
    const-string/jumbo v10, "lastTime"

    const-string/jumbo v11, "lastTime"

    const-string/jumbo v12, ""

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 356
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v10, "lastTime"

    invoke-interface {v3, v10, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 357
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 360
    .end local v1    # "createTime":Ljava/lang/String;
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "preference":Landroid/content/SharedPreferences;
    :cond_0
    invoke-virtual {p0}, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 361
    .local v9, "utdid":Ljava/lang/String;
    const-string/jumbo v10, "tid"

    invoke-interface {v5, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string/jumbo v10, "umid"

    const-string/jumbo v11, ""

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    invoke-static {}, Litn;->a()Litn;

    .line 367
    const-string/jumbo v10, "appName"

    invoke-virtual {p0}, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Litn;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string/jumbo v10, "appVersion"

    invoke-virtual {p0}, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Litn;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string/jumbo v10, "bluetooth"

    invoke-virtual {v2}, Lito;->n()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const-string/jumbo v10, "baseband"

    invoke-static {}, Lito;->o()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string/jumbo v10, "ApInfo"

    invoke-virtual {v0, v10, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 376
    .restart local v7    # "preference":Landroid/content/SharedPreferences;
    const-string/jumbo v10, "appKey"

    const-string/jumbo v11, "appKey"

    iget-object v12, p0, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;->a:Ljava/lang/String;

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    invoke-static {}, Litq;->a()Litq;

    move-result-object v4

    .line 381
    .local v4, "environmentInfo":Litq;
    const-string/jumbo v10, "os"

    invoke-static {}, Litq;->b()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string/jumbo v11, "root"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Litq;->c()Z

    move-result v10

    if-eqz v10, :cond_1

    const-string/jumbo v10, "1"

    :goto_0
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const-string/jumbo v11, "em"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Litq;->a(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string/jumbo v10, "1"

    :goto_1
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const-string/jumbo v10, "board"

    invoke-static {}, Litq;->d()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    const-string/jumbo v10, "brand"

    invoke-static {}, Litq;->e()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string/jumbo v10, "device"

    invoke-static {}, Litq;->f()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const-string/jumbo v10, "host"

    invoke-static {}, Lito;->s()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    const-string/jumbo v10, "displayid"

    invoke-static {}, Litq;->g()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    const-string/jumbo v10, "incremental"

    invoke-static {}, Litq;->h()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const-string/jumbo v10, "manufacture"

    invoke-static {}, Litq;->i()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    const-string/jumbo v10, "model"

    invoke-static {}, Litq;->j()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    const-string/jumbo v10, "name"

    invoke-static {}, Litq;->k()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    const-string/jumbo v10, "release"

    invoke-static {}, Litq;->l()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    const-string/jumbo v10, "asdk"

    invoke-static {}, Litq;->m()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const-string/jumbo v10, "tags"

    invoke-static {}, Litq;->n()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    const-string/jumbo v10, "qemu"

    .line 17000
    const-string/jumbo v11, "ro.kernel.qemu"

    const-string/jumbo v12, "0"

    invoke-static {v11, v12}, Litq;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 397
    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    :try_start_0
    invoke-virtual {p0}, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "phone"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 404
    .local v6, "manager":Landroid/telephony/TelephonyManager;
    const-string/jumbo v10, "isp"

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    .end local v6    # "manager":Landroid/telephony/TelephonyManager;
    :goto_2
    const-string/jumbo v10, "sdkName"

    invoke-virtual {p0}, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getSdkName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    const-string/jumbo v10, "sdkVersion"

    invoke-virtual {p0}, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getSdkVersion()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    return-object v5

    .line 382
    :cond_1
    const-string/jumbo v10, "0"

    goto/16 :goto_0

    .line 383
    :cond_2
    const-string/jumbo v10, "0"

    goto/16 :goto_1

    :catch_0
    move-exception v10

    goto :goto_2
.end method

.method static synthetic d(Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;)Z
    .locals 4
    .param p0, "x0"    # Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;

    .prologue
    .line 68
    .line 17232
    const-class v0, Lcom/mybank/android/phone/common/service/api/RpcService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mybank/android/phone/common/service/api/ServiceManager;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mybank/android/phone/common/service/api/RpcService;

    .line 17233
    const-class v1, Lcom/alipay/bkdeviceinfo/rpc/DeviceReportFacade;

    invoke-virtual {v0, v1}, Lcom/mybank/android/phone/common/service/api/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/bkdeviceinfo/rpc/DeviceReportFacade;

    .line 17234
    new-instance v1, Lcom/alipay/bkdeviceinfo/rpc/vo/DeviceReportVO;

    invoke-direct {v1}, Lcom/alipay/bkdeviceinfo/rpc/vo/DeviceReportVO;-><init>()V

    .line 17235
    iget-object v2, p0, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v2

    .line 17236
    if-eqz v2, :cond_0

    .line 17237
    iget-object v3, v2, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdidToken:Ljava/lang/String;

    iput-object v3, v1, Lcom/alipay/bkdeviceinfo/rpc/vo/DeviceReportVO;->apdidToken:Ljava/lang/String;

    .line 17238
    iget-object v2, v2, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->umidToken:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/bkdeviceinfo/rpc/vo/DeviceReportVO;->umidToken:Ljava/lang/String;

    .line 17240
    :cond_0
    invoke-direct {p0}, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;->c()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/bkdeviceinfo/rpc/vo/DeviceReportVO;->staticInfoMap:Ljava/util/Map;

    .line 17241
    invoke-direct {p0}, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;->b()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/bkdeviceinfo/rpc/vo/DeviceReportVO;->dynamicInfoMap:Ljava/util/Map;

    .line 17242
    invoke-interface {v0, v1}, Lcom/alipay/bkdeviceinfo/rpc/DeviceReportFacade;->reportDeviceInfo(Lcom/alipay/bkdeviceinfo/rpc/vo/DeviceReportVO;)Lcom/alipay/bkdeviceinfo/rpc/vo/DeviceReportRes;

    move-result-object v0

    .line 17243
    iget-boolean v0, v0, Lcom/alipay/bkdeviceinfo/rpc/vo/DeviceReportRes;->success:Z

    .line 68
    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 82
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 87
    return-void
.end method

.method public uploadDeviceInfo(Z)V
    .locals 6
    .param p1, "force"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 114
    if-nez p1, :cond_3

    .line 1094
    iget-object v2, p0, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v4

    .line 1095
    const/4 v2, 0x0

    .line 2090
    iget-boolean v5, p0, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;->b:Z

    .line 1096
    if-nez v5, :cond_0

    move v2, v3

    .line 1099
    :cond_0
    iget-object v5, v4, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdidToken:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v4, v4, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdid:Ljava/lang/String;

    .line 1100
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move v2, v3

    .line 115
    :cond_2
    if-nez v2, :cond_3

    .line 149
    :goto_0
    return-void

    .line 119
    :cond_3
    invoke-virtual {p0}, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "utdid":Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 121
    .local v0, "inArgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "tid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string/jumbo v2, "utdid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string/jumbo v2, "userId"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v2, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl$1;

    invoke-direct {v2, p0}, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl$1;-><init>(Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;)V

    .line 128
    invoke-virtual {v2}, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl$1;->start()V

    .line 129
    invoke-virtual {p0}, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v2

    invoke-static {}, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;->a()I

    move-result v3

    new-instance v4, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl$2;

    invoke-direct {v4, p0, v0}, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl$2;-><init>(Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;Ljava/util/Map;)V

    invoke-virtual {v2, v3, v0, v4}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->initToken(ILjava/util/Map;Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;)V

    goto :goto_0
.end method
