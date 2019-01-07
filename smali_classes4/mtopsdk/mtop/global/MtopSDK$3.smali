.class final Lmtopsdk/mtop/global/MtopSDK$3;
.super Ljava/lang/Object;
.source "MtopSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmtopsdk/mtop/global/MtopSDK;->switchEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$envMode:Lmtopsdk/mtop/domain/EnvModeEnum;


# direct methods
.method constructor <init>(Lmtopsdk/mtop/domain/EnvModeEnum;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lmtopsdk/mtop/global/MtopSDK$3;->val$envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 215
    invoke-static {}, Lmtopsdk/mtop/global/MtopSDK;->checkMtopSDKInit()V

    .line 216
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const-string/jumbo v0, "mtopsdk.MtopSDK"

    const-string/jumbo v1, "[switchEnvMode]MtopSDK switchEnvMode start"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_0
    sget-object v0, Lmtopsdk/mtop/global/MtopSDK$4;->$SwitchMap$mtopsdk$mtop$domain$EnvModeEnum:[I

    iget-object v1, p0, Lmtopsdk/mtop/global/MtopSDK$3;->val$envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/EnvModeEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 266
    :cond_1
    :goto_0
    invoke-static {}, Lmtopsdk/mtop/global/MtopSDK;->access$200()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lmtopsdk/mtop/global/MtopSDK;->access$200()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lanet/channel/SessionCenter;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 267
    invoke-static {}, Lanet/channel/SessionCenter;->getInstance()Lanet/channel/SessionCenter;

    move-result-object v0

    iget-object v1, p0, Lmtopsdk/mtop/global/MtopSDK$3;->val$envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/EnvModeEnum;->getEnvMode()I

    move-result v1

    invoke-static {v1}, Lanet/channel/entity/ENV;->valueOf(I)Lanet/channel/entity/ENV;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanet/channel/SessionCenter;->switchEnv(Lanet/channel/entity/ENV;)V

    .line 268
    invoke-static {}, Lmtopsdk/mtop/global/MtopSDK;->access$200()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/global/MtopSDK;->access$100(Landroid/content/Context;)V

    .line 269
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    const-string/jumbo v0, "mtopsdk.MtopSDK"

    const-string/jumbo v1, "[switchEnvMode]MtopSDK switchEnvMode end"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_2
    return-void

    .line 221
    :pswitch_0
    invoke-static {}, Lmtopsdk/mtop/global/MtopSDK;->access$200()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v0

    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->ONLINE:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)Lmtopsdk/mtop/global/SDKConfig;

    .line 222
    sget-object v0, Lmtopsdk/mtop/domain/EnvModeEnum;->ONLINE:Lmtopsdk/mtop/domain/EnvModeEnum;

    sput-object v0, Lmtopsdk/mtop/MtopProxyBase;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    .line 223
    sget-object v0, Lmtopsdk/common/util/SdkSetting$ENV;->release:Lmtopsdk/common/util/SdkSetting$ENV;

    invoke-static {v0}, Lmtopsdk/common/util/SdkSetting;->setEnv(Lmtopsdk/common/util/SdkSetting$ENV;)V

    .line 224
    iget-object v0, p0, Lmtopsdk/mtop/global/MtopSDK$3;->val$envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-static {v0}, Lmtopsdk/mtop/global/MtopSDK;->access$300(Lmtopsdk/mtop/domain/EnvModeEnum;)V

    .line 225
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 226
    const-string/jumbo v0, "mtopsdk.MtopSDK"

    const-string/jumbo v1, "[switchEnvMode]switch envMode to ONLINE!"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_3
    invoke-static {v3}, Lmtopsdk/mtop/global/MtopSDK;->setLogSwitch(Z)V

    goto :goto_0

    .line 231
    :pswitch_1
    invoke-static {}, Lmtopsdk/mtop/global/MtopSDK;->access$200()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v0

    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->PREPARE:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)Lmtopsdk/mtop/global/SDKConfig;

    .line 232
    sget-object v0, Lmtopsdk/mtop/domain/EnvModeEnum;->PREPARE:Lmtopsdk/mtop/domain/EnvModeEnum;

    sput-object v0, Lmtopsdk/mtop/MtopProxyBase;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    .line 233
    sget-object v0, Lmtopsdk/common/util/SdkSetting$ENV;->develop:Lmtopsdk/common/util/SdkSetting$ENV;

    invoke-static {v0}, Lmtopsdk/common/util/SdkSetting;->setEnv(Lmtopsdk/common/util/SdkSetting$ENV;)V

    .line 234
    invoke-static {v2}, Lmtopsdk/mtop/global/MtopSDK;->setLogSwitch(Z)V

    .line 235
    iget-object v0, p0, Lmtopsdk/mtop/global/MtopSDK$3;->val$envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-static {v0}, Lmtopsdk/mtop/global/MtopSDK;->access$300(Lmtopsdk/mtop/domain/EnvModeEnum;)V

    .line 236
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    const-string/jumbo v0, "mtopsdk.MtopSDK"

    const-string/jumbo v1, "[switchEnvMode]switch envMode to PRE!"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 241
    :pswitch_2
    invoke-static {}, Lmtopsdk/mtop/global/MtopSDK;->access$200()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v0

    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->TEST:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)Lmtopsdk/mtop/global/SDKConfig;

    .line 242
    sget-object v0, Lmtopsdk/mtop/domain/EnvModeEnum;->TEST:Lmtopsdk/mtop/domain/EnvModeEnum;

    sput-object v0, Lmtopsdk/mtop/MtopProxyBase;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    .line 243
    sget-object v0, Lmtopsdk/common/util/SdkSetting$ENV;->debug:Lmtopsdk/common/util/SdkSetting$ENV;

    invoke-static {v0}, Lmtopsdk/common/util/SdkSetting;->setEnv(Lmtopsdk/common/util/SdkSetting$ENV;)V

    .line 244
    invoke-static {v2}, Lmtopsdk/mtop/global/MtopSDK;->setLogSwitch(Z)V

    .line 245
    iget-object v0, p0, Lmtopsdk/mtop/global/MtopSDK$3;->val$envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-static {v0}, Lmtopsdk/mtop/global/MtopSDK;->access$300(Lmtopsdk/mtop/domain/EnvModeEnum;)V

    .line 247
    invoke-static {v3}, Lmh;->a(Z)V

    .line 248
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    const-string/jumbo v0, "mtopsdk.MtopSDK"

    const-string/jumbo v1, "[switchEnvMode]switch envMode to DAILY!"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 253
    :pswitch_3
    invoke-static {}, Lmtopsdk/mtop/global/MtopSDK;->access$200()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v0

    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->TEST_SANDBOX:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)Lmtopsdk/mtop/global/SDKConfig;

    .line 254
    sget-object v0, Lmtopsdk/mtop/domain/EnvModeEnum;->TEST_SANDBOX:Lmtopsdk/mtop/domain/EnvModeEnum;

    sput-object v0, Lmtopsdk/mtop/MtopProxyBase;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    .line 255
    sget-object v0, Lmtopsdk/common/util/SdkSetting$ENV;->debug:Lmtopsdk/common/util/SdkSetting$ENV;

    invoke-static {v0}, Lmtopsdk/common/util/SdkSetting;->setEnv(Lmtopsdk/common/util/SdkSetting$ENV;)V

    .line 256
    invoke-static {v2}, Lmtopsdk/mtop/global/MtopSDK;->setLogSwitch(Z)V

    .line 257
    iget-object v0, p0, Lmtopsdk/mtop/global/MtopSDK$3;->val$envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-static {v0}, Lmtopsdk/mtop/global/MtopSDK;->access$300(Lmtopsdk/mtop/domain/EnvModeEnum;)V

    .line 258
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    const-string/jumbo v0, "mtopsdk.MtopSDK"

    const-string/jumbo v1, "[switchEnvMode]switch envMode to DAILY SandBox!"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
