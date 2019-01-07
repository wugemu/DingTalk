.class public final Lhmn;
.super Ljava/lang/Object;
.source "DebugInstruction.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lhmn;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 149
    const-string/jumbo v5, "onlyInfo"

    invoke-static {v5, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 150
    const-class v5, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 151
    .local v3, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-eqz v3, :cond_0

    .line 152
    invoke-interface {v3, p0, p1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getInstallPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 153
    .local v4, "installPath":Ljava/lang/String;
    invoke-interface {v3, p0, p1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getDownloadLocalPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "downloadPath":Ljava/lang/String;
    const-string/jumbo v5, "DebugInstruction"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "deleteAllAppInfo, appId: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " installPath : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " downloadPath :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string/jumbo v5, "DebugInstruction"

    new-array v6, v10, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "deleteAllAppInfo, appId: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " installPath : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " downloadPath :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lhmv;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/lang/String;)Z

    .line 159
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/lang/String;)Z

    .line 163
    .end local v0    # "downloadPath":Ljava/lang/String;
    .end local v3    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v4    # "installPath":Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "onlyPkg"

    invoke-static {v5, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 164
    const-class v5, Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    .line 165
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    .line 166
    .local v1, "h5AppCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    if-eqz v1, :cond_1

    .line 167
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-result-object v2

    .line 168
    .local v2, "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    if-eqz v2, :cond_1

    .line 169
    const-string/jumbo v5, "DebugInstruction"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "deleteDBAppInfo, appId: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string/jumbo v5, "DebugInstruction"

    new-array v6, v10, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "deleteDBAppInfo, appId: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lhmv;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    invoke-interface {v2, p0, p1}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->deleteAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .end local v1    # "h5AppCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    .end local v2    # "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    :cond_1
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 144
    sget-boolean v0, Lhmn;->a:Z

    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 13
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 55
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v4, "hybrid_debug_instruction_active"

    invoke-static {v4, v5}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 57
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v4

    sget v7, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v4, v7, :cond_0

    move v4, v5

    .line 84
    :goto_0
    return v4

    .line 62
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 63
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "host":Ljava/lang/String;
    const-string/jumbo v4, "mini.debug"

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 65
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "/clear"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1121
    const-string/jumbo v4, "appId"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1122
    const-string/jumbo v4, "mode"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1123
    const-class v4, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 1124
    const-class v9, Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    .line 1126
    if-eqz v4, :cond_1

    .line 1127
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1129
    const/4 v4, 0x0

    invoke-static {v7, v4, v8}, Lhmn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    const-string/jumbo v4, "DebugInstruction"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "clear appId: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " mode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v10

    invoke-static {v4, v9}, Lhmv;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1131
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "App ["

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "] cleared"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lhmn;->c(Ljava/lang/String;)V

    :cond_1
    :goto_1
    move v4, v6

    .line 69
    goto/16 :goto_0

    .line 1135
    :cond_2
    invoke-static {v8}, Lhmn;->b(Ljava/lang/String;)V

    .line 1136
    const-string/jumbo v4, "DebugInstruction"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "clear all apps mode: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v4, v7}, Lhmv;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1137
    const-string/jumbo v4, "All apps cleared"

    invoke-static {v4}, Lhmn;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 80
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "host":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 81
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_3
    move v4, v5

    .line 84
    goto/16 :goto_0

    .line 70
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "host":Ljava/lang/String;
    .restart local v3    # "uri":Landroid/net/Uri;
    :cond_4
    :try_start_1
    const-string/jumbo v4, "/appxUpdate"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2092
    const-class v4, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 2093
    const-string/jumbo v7, ""

    .line 2094
    if-eqz v4, :cond_9

    .line 2095
    const-string/jumbo v8, "2018030202303012"

    invoke-interface {v4, v8}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v4

    .line 2096
    if-eqz v4, :cond_9

    .line 2097
    iget-object v4, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    .line 2100
    :goto_2
    const-string/jumbo v7, "enable"

    invoke-virtual {v3, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2101
    const-string/jumbo v8, "true"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2102
    const/4 v7, 0x1

    sput-boolean v7, Lhmn;->a:Z

    .line 2103
    const-string/jumbo v7, "DebugInstruction"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Appx update enabled, version: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lhmv;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2104
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Appx update enabled, version: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lhmn;->c(Ljava/lang/String;)V

    :cond_5
    :goto_3
    move v4, v6

    .line 72
    goto/16 :goto_0

    .line 2106
    :cond_6
    const-string/jumbo v8, "false"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2107
    const/4 v7, 0x0

    sput-boolean v7, Lhmn;->a:Z

    .line 2108
    const-string/jumbo v7, "DebugInstruction"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Appx disabled enabled, version: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lhmv;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2109
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Appx update disabled, version: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lhmn;->c(Ljava/lang/String;)V

    goto :goto_3

    .line 73
    :cond_7
    const-string/jumbo v4, "/componentMode"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 74
    invoke-virtual {v3}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    .line 2214
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 2217
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 2218
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 2219
    const-string/jumbo v8, "url"

    invoke-virtual {v7, v8, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2220
    const-class v8, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;

    invoke-virtual {v7, v4, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2221
    invoke-virtual {v4, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_8
    move v4, v6

    .line 76
    goto/16 :goto_0

    :cond_9
    move-object v4, v7

    goto/16 :goto_2
.end method

.method private static b(Ljava/lang/String;)V
    .locals 9
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    .line 178
    const-class v6, Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    .line 179
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    .line 180
    .local v3, "h5AppCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    if-eqz v3, :cond_2

    .line 181
    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-result-object v4

    .line 182
    .local v4, "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    if-eqz v4, :cond_2

    .line 183
    invoke-interface {v4}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getAllApp()Ljava/util/Map;

    move-result-object v0

    .line 184
    .local v0, "allAppInfos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;>;"
    if-eqz v0, :cond_2

    .line 185
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 186
    .local v2, "appId":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 187
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 188
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;"
    if-eqz v5, :cond_0

    .line 189
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 190
    .local v1, "app":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v1, :cond_1

    iget-object v6, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    :goto_1
    invoke-static {v2, v6, p0}, Lhmn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 198
    .end local v0    # "allAppInfos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;>;"
    .end local v1    # "app":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .end local v2    # "appId":Ljava/lang/String;
    .end local v4    # "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;"
    :cond_2
    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 201
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lhmn$1;

    invoke-direct {v1, p0}, Lhmn$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 207
    return-void
.end method
