.class public Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup;
.super Ljava/lang/Object;
.source "UcVideoSetup.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5UcService::UcVideoSetup"

.field private static observer1:Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;

.field private static observer2:Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;

.field private static observer3:Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;

.field private static observer4:Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup$1;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup;->observer1:Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;

    .line 31
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup$2;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup$2;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup;->observer2:Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;

    .line 38
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup$3;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup$3;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup;->observer3:Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;

    .line 45
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup$4;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup$4;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup;->observer4:Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-static {p0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup;->updateWebAudioDecodePolicy(Ljava/lang/String;)V

    return-void
.end method

.method public static initVideoControl(Landroid/content/Context;ZLjava/lang/String;ZZ)J
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "useApollo"    # Z
    .param p2, "downloadUrl"    # Ljava/lang/String;
    .param p3, "downloadApolloIn4G"    # Z
    .param p4, "downloadApolloInLiteProcess"    # Z

    .prologue
    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 58
    .local v8, "ts":J
    const-string/jumbo v12, "initVideoControl"

    invoke-static {v12}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->beginTrace(Ljava/lang/String;)V

    .line 59
    if-eqz p1, :cond_2

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 61
    .local v6, "start":J
    const/4 v12, 0x1

    invoke-static {v12}, Lcom/uc/webview/export/extension/UCSettings;->setEnableUCVideoViewFullscreen(Z)V

    .line 62
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 63
    const-string/jumbo p2, "https://gw.alipayobjects.com/os/rmsportal/EtIoWfqVaQlxNOWBsAaI.zip"

    .line 65
    :cond_0
    const-string/jumbo v12, "H5UcService::UcVideoSetup"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "useApollo downloadUrl: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v12

    if-nez v12, :cond_1

    if-eqz p4, :cond_4

    .line 68
    :cond_1
    :try_start_0
    new-instance v12, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup$5;

    move/from16 v0, p3

    move-object/from16 v1, p0

    invoke-direct {v12, v0, v1}, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup$5;-><init>(ZLandroid/content/Context;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v12}, Lcom/uc/webview/export/extension/UCCore;->updateUCPlayer(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 82
    const-string/jumbo v12, "H5UcService::UcVideoSetup"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "updateUCPlayer cost:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v6

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v6    # "start":J
    :cond_2
    :goto_0
    const-class v12, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 92
    .local v2, "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v2, :cond_3

    .line 95
    const-string/jumbo v12, "h5_ucVideoHWACCfg"

    sget-object v13, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup;->observer1:Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;

    invoke-interface {v2, v12, v13}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithNotifyChange(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;)Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, "hwacCfgStr":Ljava/lang/String;
    const-string/jumbo v12, "u4xr_video_st_list"

    invoke-static {v4, v12}, Lcom/alipay/mobile/nebulauc/impl/setup/UcBizSetupHelper;->configure(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string/jumbo v12, "h5_ucVideoUseRawControl"

    sget-object v13, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup;->observer2:Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;

    invoke-interface {v2, v12, v13}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithNotifyChange(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;)Ljava/lang/String;

    move-result-object v10

    .line 100
    .local v10, "ucVideoUseRawControl":Ljava/lang/String;
    const-string/jumbo v12, "crsp_sp_rc"

    invoke-static {v10, v12}, Lcom/alipay/mobile/nebulauc/impl/setup/UcBizSetupHelper;->configure(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string/jumbo v12, "h5_ucVideoDisableFloat"

    sget-object v13, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup;->observer3:Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;

    invoke-interface {v2, v12, v13}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithNotifyChange(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;)Ljava/lang/String;

    move-result-object v5

    .line 104
    .local v5, "ucVideoDisableFloat":Ljava/lang/String;
    const-string/jumbo v12, "video_fixed_sw_hostlist"

    invoke-static {v5, v12}, Lcom/alipay/mobile/nebulauc/impl/setup/UcBizSetupHelper;->configure(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string/jumbo v12, "h5_ucApolloConfig"

    sget-object v13, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup;->observer4:Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;

    invoke-interface {v2, v12, v13}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithNotifyChange(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;)Ljava/lang/String;

    move-result-object v11

    .line 108
    .local v11, "ucWebAudioDisableDefaultDecoder":Ljava/lang/String;
    invoke-static {v11}, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup;->updateWebAudioDecodePolicy(Ljava/lang/String;)V

    .line 111
    .end local v4    # "hwacCfgStr":Ljava/lang/String;
    .end local v5    # "ucVideoDisableFloat":Ljava/lang/String;
    .end local v10    # "ucVideoUseRawControl":Ljava/lang/String;
    .end local v11    # "ucWebAudioDisableDefaultDecoder":Ljava/lang/String;
    :cond_3
    const-string/jumbo v12, "initVideoControl"

    invoke-static {v12}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->endTrace(Ljava/lang/String;)V

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v12, v8, v12

    return-wide v12

    .line 83
    .end local v2    # "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .restart local v6    # "start":J
    :catch_0
    move-exception v3

    .line 84
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v12, "H5UcService::UcVideoSetup"

    const-string/jumbo v13, "download apollo exception "

    invoke-static {v12, v13, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 87
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    const-string/jumbo v12, "H5UcService::UcVideoSetup"

    const-string/jumbo v13, "lite process and downloadApolloInLiteProcess false"

    invoke-static {v12, v13}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static updateWebAudioDecodePolicy(Ljava/lang/String;)V
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 116
    const/4 v0, 0x1

    .line 118
    .local v0, "disableDefaultDecoder":Z
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 119
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v2, :cond_0

    .line 120
    const-string/jumbo v3, "NO"

    const-string/jumbo v4, "webAudioDisableDefaultDecoder"

    .line 121
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    .line 126
    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    :goto_0
    const-string/jumbo v3, "crsp_wddd"

    invoke-static {v3, v0}, Lcom/uc/webview/export/extension/UCSettings;->setGlobalBoolValue(Ljava/lang/String;Z)V

    .line 127
    return-void

    .line 121
    .restart local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 123
    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "H5UcService::UcVideoSetup"

    const-string/jumbo v4, "updateWebAudioDecodePolicy parseObject error"

    invoke-static {v3, v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
