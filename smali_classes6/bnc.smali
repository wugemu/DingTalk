.class public Lbnc;
.super Ljava/lang/Object;
.source "ApDeviceService.java"


# static fields
.field private static volatile a:Lbnc;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lbnc;
    .locals 2

    .prologue
    .line 53
    sget-object v0, Lbnc;->a:Lbnc;

    if-nez v0, :cond_1

    .line 54
    const-class v1, Lbnc;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v0, Lbnc;->a:Lbnc;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lbnc;

    invoke-direct {v0}, Lbnc;-><init>()V

    sput-object v0, Lbnc;->a:Lbnc;

    .line 58
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_1
    sget-object v0, Lbnc;->a:Lbnc;

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(JILjava/lang/String;Lcma;)V
    .locals 5
    .param p1, "orgId"    # J
    .param p3, "devServId"    # I
    .param p4, "deviceVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 367
    .local p5, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;>;"
    const-string/jumbo v1, "ApDeviceService"

    const-string/jumbo v2, "queryOrgApBindConfig"

    invoke-static {v1, v2}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_1

    .line 369
    const-string/jumbo v1, "ApDeviceService"

    const-string/jumbo v2, "queryOrgApBindConfig orgId <= 0"

    invoke-static {v1, v2}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    const-class v1, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/service/ApDeviceIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/service/ApDeviceIService;

    .line 373
    .local v0, "service":Lcom/alibaba/android/dingtalk/alpha/rpc/idl/service/ApDeviceIService;
    if-eqz v0, :cond_0

    .line 376
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lbnc$11;

    invoke-direct {v3, p0, p5}, Lbnc$11;-><init>(Lbnc;Lcma;)V

    invoke-interface {v0, v1, v2, p4, v3}, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/service/ApDeviceIService;->queryOrgApBindConfigV2(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method public final a(JJLcma;)V
    .locals 7
    .param p1, "orgId"    # J
    .param p3, "targetUid"    # J
    .param p5, "listener"    # Lcma;

    .prologue
    const-wide/16 v4, 0x0

    .line 302
    const-string/jumbo v1, "ApDeviceService"

    const-string/jumbo v2, "getApTerminalInfo"

    invoke-static {v1, v2}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    cmp-long v1, p1, v4

    if-lez v1, :cond_0

    cmp-long v1, p3, v4

    if-gtz v1, :cond_2

    .line 304
    :cond_0
    const-string/jumbo v1, "ApDeviceService"

    const-string/jumbo v2, "orgId <= 0 or targetUid <= 0"

    invoke-static {v1, v2}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    if-eqz p5, :cond_1

    .line 306
    const/4 v1, 0x0

    invoke-interface {p5, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 331
    :cond_1
    :goto_0
    return-void

    .line 310
    :cond_2
    const-class v1, Lcom/alibaba/android/dingtalk/guard/idl/services/OpenDeviceIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/guard/idl/services/OpenDeviceIService;

    .line 311
    .local v0, "service":Lcom/alibaba/android/dingtalk/guard/idl/services/OpenDeviceIService;
    if-eqz v0, :cond_1

    .line 314
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lbnc$9;

    invoke-direct {v3, p0, p5}, Lbnc$9;-><init>(Lbnc;Lcma;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/guard/idl/services/OpenDeviceIService;->getApTerminalInfo(Ljava/lang/Long;Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public final a(JLcma;)V
    .locals 9
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    const-string/jumbo v4, "ApDeviceService"

    const-string/jumbo v5, "getKeyAndSsids"

    invoke-static {v4, v5}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-class v4, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/service/ApDeviceIService;

    invoke-static {v4}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/service/ApDeviceIService;

    .line 70
    .local v2, "service":Lcom/alibaba/android/dingtalk/alpha/rpc/idl/service/ApDeviceIService;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 71
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lblw;->a()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "mac":Ljava/lang/String;
    invoke-static {v0}, Lcom/taobao/dp/DeviceSecuritySDK;->getInstance(Landroid/content/Context;)Lcom/taobao/dp/DeviceSecuritySDK;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/dp/DeviceSecuritySDK;->getSecurityToken()Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "umidToken":Ljava/lang/String;
    const-string/jumbo v4, "ApDeviceService"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getKeyAndSsids mac = "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, ", umidToken = "

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v3, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v4, Lbnc$1;

    invoke-direct {v4, p0, p3, p1, p2}, Lbnc$1;-><init>(Lbnc;Lcma;J)V

    invoke-interface {v2, v3, v1, v4}, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/service/ApDeviceIService;->getKeyAndSsidsV2(Ljava/lang/String;Ljava/lang/String;Liyv;)V

    .line 138
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;Lcma;)V
    .locals 3
    .param p1, "bindAndSettingModel"    # Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;",
            "Lcma",
            "<",
            "Lbsa;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 215
    .local p2, "listener":Lcma;, "Lcma<Lbsa;>;"
    const-string/jumbo v1, "ApDeviceService"

    const-string/jumbo v2, "bindAndSettings"

    invoke-static {v1, v2}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    if-nez p1, :cond_1

    .line 217
    const-string/jumbo v1, "ApDeviceService"

    const-string/jumbo v2, "sbindAndSettings model is null"

    invoke-static {v1, v2}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    const-class v1, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/service/ApDeviceIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/service/ApDeviceIService;

    .line 221
    .local v0, "service":Lcom/alibaba/android/dingtalk/alpha/rpc/idl/service/ApDeviceIService;
    if-eqz v0, :cond_0

    .line 224
    new-instance v1, Lbnc$6;

    invoke-direct {v1, p0, p2}, Lbnc$6;-><init>(Lbnc;Lcma;)V

    invoke-interface {v0, p1, v1}, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/service/ApDeviceIService;->bindAndSettingsV2(Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcma;)V
    .locals 9
    .param p1, "corpId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 141
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    const-string/jumbo v1, "ApDeviceService"

    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v5, "getPsk corpId = "

    aput-object v5, v2, v6

    aput-object p1, v2, v7

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-class v1, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/service/IotTerminalKeyIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/service/IotTerminalKeyIService;

    .line 146
    .local v0, "service":Lcom/alibaba/android/dingtalk/alpha/rpc/idl/service/IotTerminalKeyIService;
    if-eqz v0, :cond_0

    .line 149
    invoke-static {}, Lblw;->a()Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, "mac":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/dp/DeviceSecuritySDK;->getInstance(Landroid/content/Context;)Lcom/taobao/dp/DeviceSecuritySDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/dp/DeviceSecuritySDK;->getSecurityToken()Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "umidToken":Ljava/lang/String;
    const-string/jumbo v1, "ApDeviceService"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v5, "getPsk mac = "

    aput-object v5, v2, v6

    aput-object v4, v2, v7

    const-string/jumbo v5, ", umidToken = "

    aput-object v5, v2, v8

    const/4 v5, 0x3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v5, Lbnc$5;

    invoke-direct {v5, p0, p1, p2}, Lbnc$5;-><init>(Lbnc;Ljava/lang/String;Lcma;)V

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/service/IotTerminalKeyIService;->getPskV2(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Lcma;)V
    .locals 3
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcma;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 244
    const-string/jumbo v1, "ApDeviceService"

    const-string/jumbo v2, "startWds"

    invoke-static {v1, v2}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    const-string/jumbo v1, "ApDeviceService"

    const-string/jumbo v2, "stopWds corpId is null"

    invoke-static {v1, v2}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    const-class v1, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/service/ApDeviceIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/service/ApDeviceIService;

    .line 250
    .local v0, "service":Lcom/alibaba/android/dingtalk/alpha/rpc/idl/service/ApDeviceIService;
    if-eqz v0, :cond_0

    .line 253
    new-instance v1, Lbnc$7;

    invoke-direct {v1, p0, p2}, Lbnc$7;-><init>(Lbnc;Lcma;)V

    invoke-interface {v0, p1, v1}, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/service/ApDeviceIService;->startWirelessNetworking(Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;Lcma;)V
    .locals 3
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcma;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 273
    const-string/jumbo v1, "ApDeviceService"

    const-string/jumbo v2, "stopWds"

    invoke-static {v1, v2}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    const-string/jumbo v1, "ApDeviceService"

    const-string/jumbo v2, "stopWds corpId is null"

    invoke-static {v1, v2}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    const-class v1, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/service/ApDeviceIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/service/ApDeviceIService;

    .line 279
    .local v0, "service":Lcom/alibaba/android/dingtalk/alpha/rpc/idl/service/ApDeviceIService;
    if-eqz v0, :cond_0

    .line 282
    new-instance v1, Lbnc$8;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lbnc$8;-><init>(Lbnc;Lcma;)V

    invoke-interface {v0, p1, v1}, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/service/ApDeviceIService;->stopWirelessNetworking(Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method
