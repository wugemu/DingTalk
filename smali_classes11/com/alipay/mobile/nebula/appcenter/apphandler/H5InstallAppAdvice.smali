.class public Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;
.super Ljava/lang/Object;
.source "H5InstallAppAdvice.java"

# interfaces
.implements Lcom/alipay/mobile/aspect/a;


# static fields
.field private static final H5App:Ljava/lang/String; = "H5App"

.field private static final TAG:Ljava/lang/String; = "H5InstallAppAdvice"

.field public static final debug:Ljava/lang/String; = "debug"

.field private static final mEngineMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final nbsource:Ljava/lang/String; = "nbsource"

.field private static final tinyApp:Ljava/lang/String; = "tinyApp"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->mEngineMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canSwitchRNPackageToTinyApp()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 206
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 207
    .local v1, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v1, :cond_0

    .line 208
    const-string/jumbo v3, "NEED_APP_TYPE_SWITCH_TO_TINY_APP_DEBUG"

    invoke-interface {v1, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "configStr":Ljava/lang/String;
    const-string/jumbo v3, "false"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 211
    .end local v0    # "configStr":Ljava/lang/String;
    :cond_0
    return v2
.end method

.method public static enableUseDevMode(Landroid/os/Bundle;)Z
    .locals 3
    .param p0, "param"    # Landroid/os/Bundle;

    .prologue
    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, "result":Z
    if-eqz p0, :cond_0

    const-string/jumbo v1, "debug"

    const-string/jumbo v2, "nbsource"

    invoke-static {p0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    const/4 v0, 0x1

    .line 267
    :cond_0
    return v0
.end method

.method private static generateApplicationDescription(Ljava/lang/String;Ljava/lang/String;)Linj;
    .locals 7
    .param p0, "targetAppId"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 169
    const/4 v1, 0x0

    .line 170
    .local v1, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-result-object v2

    .line 171
    .local v2, "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    if-eqz v2, :cond_0

    .line 172
    invoke-interface {v2, p0, p1}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v1

    .line 173
    if-nez v1, :cond_0

    .line 174
    const-string/jumbo v4, "H5InstallAppAdvice"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "get null appInfo for nbsv "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-interface {v2, p0}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getHighestAppVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, "highestVersion":Ljava/lang/String;
    invoke-interface {v2, p0, v3}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v1

    .line 180
    .end local v3    # "highestVersion":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "H5InstallAppAdvice"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "get appInfo: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance v0, Linj;

    invoke-direct {v0}, Linj;-><init>()V

    .line 184
    .local v0, "appDescription":Linj;
    if-eqz v1, :cond_1

    .line 186
    invoke-static {v1}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isRNPackage(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->canSwitchRNPackageToTinyApp()Z

    .line 198
    :cond_1
    const-string/jumbo v4, "H5InstallAppAdvice"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "get ApplicationDesc for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-object v0
.end method

.method static restoreApplicationDescription(Ljava/lang/String;)V
    .locals 5
    .param p0, "targetAppId"    # Ljava/lang/String;

    .prologue
    .line 152
    sget-object v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->mEngineMap:Ljava/util/Map;

    monitor-enter v2

    .line 153
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->mEngineMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    .local v0, "originEngineType":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 155
    const-string/jumbo v1, "H5InstallAppAdvice"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "restoreApplicationDescription "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    new-instance v1, Linj;

    invoke-direct {v1}, Linj;-><init>()V

    .line 160
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v1, v3

    .line 162
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    .line 165
    :cond_0
    monitor-exit v2

    return-void

    .end local v0    # "originEngineType":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static updateApplicationDescription(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "targetAppId"    # Ljava/lang/String;
    .param p1, "param"    # Landroid/os/Bundle;

    .prologue
    .line 126
    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->mEngineMap:Ljava/util/Map;

    monitor-enter v1

    .line 127
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    .line 137
    const-string/jumbo v0, "nbsv"

    .line 138
    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->generateApplicationDescription(Ljava/lang/String;Ljava/lang/String;)Linj;

    .line 141
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    .line 143
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    .line 145
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onCallAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "pointCut"    # Ljava/lang/String;
    .param p2, "targetPoint"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 222
    return-void
.end method

.method public onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 9
    .param p1, "pointCut"    # Ljava/lang/String;
    .param p2, "targetPoint"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 76
    const-string/jumbo v6, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.installApp(String, String, Bundle, FragmentActivity)"

    invoke-static {p1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-object v5

    .line 81
    :cond_1
    if-eqz p3, :cond_0

    :try_start_0
    array-length v6, p3

    const/4 v7, 0x3

    if-lt v6, v7, :cond_0

    .line 82
    const-string/jumbo v3, ""

    .local v3, "sourceAppId":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 83
    .local v4, "targetAppId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 84
    .local v2, "param":Landroid/os/Bundle;
    const/4 v6, 0x0

    aget-object v6, p3, v6

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 85
    const/4 v6, 0x0

    aget-object v3, p3, v6

    .end local v3    # "sourceAppId":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 88
    .restart local v3    # "sourceAppId":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x1

    aget-object v6, p3, v6

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 89
    const/4 v6, 0x1

    aget-object v4, p3, v6

    .end local v4    # "targetAppId":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 91
    .restart local v4    # "targetAppId":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x2

    aget-object v6, p3, v6

    instance-of v6, v6, Landroid/os/Bundle;

    if-eqz v6, :cond_4

    .line 92
    const/4 v6, 0x2

    aget-object v2, p3, v6

    .end local v2    # "param":Landroid/os/Bundle;
    check-cast v2, Landroid/os/Bundle;

    .line 95
    .restart local v2    # "param":Landroid/os/Bundle;
    :cond_4
    const-string/jumbo v6, "H5InstallAppAdvice"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "sourceAppId "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " targetAppId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " param:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->enableUseDevMode(Landroid/os/Bundle;)Z

    move-result v1

    .line 100
    .local v1, "needCheck":Z
    if-eqz v1, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 101
    const-string/jumbo v6, "nbsv"

    .line 102
    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 101
    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->generateApplicationDescription(Ljava/lang/String;Ljava/lang/String;)Linj;

    .line 105
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    .line 109
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/framework/b;->c()Lcom/alipay/mobile/framework/c;

    move-result-object v6

    .line 110
    invoke-virtual {v6, v3, v4, v2}, Lcom/alipay/mobile/framework/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 113
    new-instance v6, Landroid/util/Pair;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    goto/16 :goto_0

    .line 116
    .end local v1    # "needCheck":Z
    .end local v2    # "param":Landroid/os/Bundle;
    .end local v3    # "sourceAppId":Ljava/lang/String;
    .end local v4    # "targetAppId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "H5InstallAppAdvice"

    invoke-static {v6, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public onCallBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "pointCut"    # Ljava/lang/String;
    .param p2, "targetPoint"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 62
    return-void
.end method

.method public onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "pointCut"    # Ljava/lang/String;
    .param p2, "thisPoint"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 259
    return-void
.end method

.method public onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 1
    .param p1, "pointCut"    # Ljava/lang/String;
    .param p2, "thisPoint"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    const/4 v0, 0x0

    return-object v0
.end method

.method public onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "pointCut"    # Ljava/lang/String;
    .param p2, "thisPoint"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 232
    return-void
.end method
