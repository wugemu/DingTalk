.class public Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager;
.super Ljava/lang/Object;
.source "H5NebulaAppConfigManager.java"


# static fields
.field public static final DEFAULT_OUT_DATE_SECOND:I = 0x278d00

.field public static final DEFAULT_RES_INVALID_SECOND:I = 0x3f480

.field private static final TAG:Ljava/lang/String; = "H5NebulaAppConfigManager"

.field private static canUseClientConfig:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager;->canUseClientConfig:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {p0}, Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager;->applyConfig(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager;->canUseClientConfig:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 31
    sput-boolean p0, Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager;->canUseClientConfig:Z

    return p0
.end method

.method private static applyConfig(Ljava/lang/String;)V
    .locals 2
    .param p0, "configStr"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 67
    :cond_0
    const-string/jumbo v0, "IO"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static enableNewConfig()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager;->canUseClientConfig:Z

    return v0
.end method

.method public static initConfig()V
    .locals 4

    .prologue
    .line 49
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 50
    .local v1, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v1, :cond_0

    .line 51
    const-string/jumbo v2, "h5_nbmngconfig"

    new-instance v3, Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager$1;

    invoke-direct {v3}, Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager$1;-><init>()V

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithNotifyChange(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "configValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager;->applyConfig(Ljava/lang/String;)V

    .line 61
    .end local v0    # "configValue":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static isOutOfReqRate(Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z
    .locals 12
    .param p0, "copyParam"    # Landroid/os/Bundle;
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 104
    const/4 v3, 0x1

    .line 143
    :goto_0
    return v3

    .line 107
    :cond_0
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 108
    .local v0, "provider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-nez v0, :cond_1

    .line 109
    const/4 v3, 0x0

    goto :goto_0

    .line 113
    :cond_1
    const-string/jumbo v3, "yes"

    iget-object v8, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->fromPreset:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 115
    const-string/jumbo v3, "h5_use_preset_pkg_info"

    const/4 v8, 0x0

    invoke-static {v3, v8}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 116
    const-string/jumbo v3, "H5NebulaAppConfigManager"

    const-string/jumbo v8, " appInfo is fromPreset set Timeout"

    invoke-static {v3, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const/4 v3, 0x1

    goto :goto_0

    .line 122
    :cond_2
    const-string/jumbo v3, "strictReqRate"

    invoke-static {p0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "rate":Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 126
    .local v2, "strictReqRate":I
    if-nez v2, :cond_3

    .line 127
    const-string/jumbo v3, "preReqRate"

    .line 128
    invoke-interface {v0, v3}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getConfigExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v8, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_channel:I

    .line 127
    invoke-static {v3, v8}, Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager;->parsePreReqRate(Ljava/lang/String;I)I

    move-result v2

    .line 133
    :cond_3
    if-eqz v2, :cond_4

    iget-object v3, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->update_app_time:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 134
    iget-object v3, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->update_app_time:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 135
    .local v6, "updateTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v6

    .line 136
    .local v4, "timeDiff":J
    const-string/jumbo v3, "H5NebulaAppConfigManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "updateTime:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " timeDiff:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-wide/16 v10, 0x3e8

    div-long v10, v4, v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " strictReqRat:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-wide/16 v8, 0x3e8

    div-long v8, v4, v8

    int-to-long v10, v2

    cmp-long v3, v8, v10

    if-lez v3, :cond_4

    .line 140
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 143
    .end local v4    # "timeDiff":J
    .end local v6    # "updateTime":J
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method private static parsePreReqRate(Ljava/lang/String;I)I
    .locals 4
    .param p0, "preReqRate"    # Ljava/lang/String;
    .param p1, "app_channel"    # I

    .prologue
    .line 150
    const/4 v1, 0x0

    .line 151
    .local v1, "strictReqRate":I
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 152
    .local v0, "preJson":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "time":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 161
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 167
    .end local v2    # "time":Ljava/lang/String;
    :cond_0
    :goto_1
    return v1

    .line 157
    :cond_1
    const-string/jumbo v3, "common"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "time":Ljava/lang/String;
    goto :goto_0

    .line 164
    :cond_2
    const v1, 0x278d00

    goto :goto_1
.end method
