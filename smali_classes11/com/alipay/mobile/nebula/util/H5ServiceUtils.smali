.class public Lcom/alipay/mobile/nebula/util/H5ServiceUtils;
.super Ljava/lang/Object;
.source "H5ServiceUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5ServiceUtils"

.field private static sUcService:Lcom/alipay/mobile/h5container/service/UcService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->sUcService:Lcom/alipay/mobile/h5container/service/UcService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppCenterService()Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 80
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    const-class v1, Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    .line 81
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/framework/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    .line 82
    .local v0, "appCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    if-nez v0, :cond_0

    .line 83
    const-string/jumbo v1, "H5_ABNORMAL_ERROR"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "SERVICE_NOT_FOUND"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "H5AppCenterService"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 83
    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logH5Exception(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 86
    :cond_0
    return-object v0
.end method

.method public static getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 91
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getAppCenterService()Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    move-result-object v0

    .line 92
    .local v0, "appCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    const/4 v1, 0x0

    .line 93
    .local v1, "appDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-result-object v1

    .line 97
    :cond_0
    if-nez v1, :cond_1

    .line 98
    const-string/jumbo v2, "H5_ABNORMAL_ERROR"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 99
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string/jumbo v3, "SERVICE_NOT_FOUND"

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string/jumbo v3, "H5AppDBService"

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 98
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logH5Exception(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 101
    :cond_1
    return-object v1
.end method

.method public static getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 69
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    const-class v1, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 70
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/framework/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 71
    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-nez v0, :cond_0

    .line 72
    const-string/jumbo v1, "H5_ABNORMAL_ERROR"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "SERVICE_NOT_FOUND"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "H5Service"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 72
    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logH5Exception(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 75
    :cond_0
    return-object v0
.end method

.method public static getServiceDownGradeMode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 111
    const-string/jumbo v1, "new"

    .line 112
    .local v1, "mode":Ljava/lang/String;
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 113
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    .line 114
    const-string/jumbo v3, "h5ServiceDowngradeMode"

    invoke-interface {v0, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 115
    .local v2, "modeJson":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v2, :cond_0

    .line 116
    const-string/jumbo v3, "mode"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .end local v2    # "modeJson":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    return-object v1
.end method

.method public static getUcService()Lcom/alipay/mobile/h5container/service/UcService;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 29
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    const-class v5, Lcom/alipay/mobile/h5container/service/UcService;

    .line 30
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/framework/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/h5container/service/UcService;

    .line 31
    .local v3, "service":Lcom/alipay/mobile/h5container/service/UcService;
    if-eqz v3, :cond_0

    .line 65
    .end local v3    # "service":Lcom/alipay/mobile/h5container/service/UcService;
    .local v2, "reflectCanFound":Z
    :goto_0
    return-object v3

    .line 36
    .end local v2    # "reflectCanFound":Z
    .restart local v3    # "service":Lcom/alipay/mobile/h5container/service/UcService;
    :cond_0
    const-string/jumbo v5, "new"

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getServiceDownGradeMode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v3, v6

    .line 37
    goto :goto_0

    .line 42
    :cond_1
    sget-object v5, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->sUcService:Lcom/alipay/mobile/h5container/service/UcService;

    if-nez v5, :cond_3

    .line 45
    const/4 v1, 0x0

    .line 46
    .local v1, "clazz":Ljava/lang/Class;
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    invoke-static {}, Lcom/alipay/mobile/framework/b;->b()Lcom/alipay/mobile/framework/a;

    .line 48
    invoke-static {}, Lcom/alipay/mobile/framework/a;->b()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 49
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_2

    .line 50
    const-string/jumbo v5, "com.alipay.mobile.nebulauc.impl.UcServiceImpl"

    invoke-virtual {v0, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 52
    :cond_2
    if-eqz v1, :cond_3

    .line 53
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/h5container/service/UcService;

    sput-object v5, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->sUcService:Lcom/alipay/mobile/h5container/service/UcService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v1    # "clazz":Ljava/lang/Class;
    :cond_3
    :goto_1
    sget-object v5, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->sUcService:Lcom/alipay/mobile/h5container/service/UcService;

    if-eqz v5, :cond_4

    const/4 v2, 0x1

    .line 61
    .restart local v2    # "reflectCanFound":Z
    :goto_2
    const-string/jumbo v5, "H5_ABNORMAL_ERROR"

    invoke-static {v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    .line 62
    invoke-virtual {v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    const-string/jumbo v7, "SERVICE_NOT_FOUND"

    invoke-virtual {v5, v7, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    const-string/jumbo v7, "UcService"

    invoke-virtual {v5, v7, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    .line 63
    invoke-virtual {v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    const-string/jumbo v6, "reflectFound"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    .line 61
    invoke-static {v5}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logH5Exception(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 65
    sget-object v3, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->sUcService:Lcom/alipay/mobile/h5container/service/UcService;

    goto :goto_0

    .line 55
    .end local v2    # "reflectCanFound":Z
    .restart local v1    # "clazz":Ljava/lang/Class;
    :catch_0
    move-exception v4

    .line 56
    .local v4, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v5, "H5ServiceUtils"

    const-string/jumbo v7, "getUcService"

    invoke-static {v5, v7, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 60
    .end local v1    # "clazz":Ljava/lang/Class;
    .end local v4    # "throwable":Ljava/lang/Throwable;
    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method
