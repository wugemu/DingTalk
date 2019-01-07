.class final Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$2;
.super Ljava/lang/Object;
.source "UcServiceSetup.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->initCore(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Lcom/uc/webview/export/utility/SetupTask;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 302
    .line 1305
    const-string/jumbo v0, "setupTaskSuccess"

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->beginTrace(Ljava/lang/String;)V

    .line 1306
    const-string/jumbo v0, "H5UcService"

    const-string/jumbo v1, "uc kernel init success"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    sput-boolean v4, Liog;->a:Z

    .line 1308
    sput-boolean v4, Liog;->b:Z

    .line 1310
    invoke-static {}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->isForeground()Z

    move-result v0

    .line 1311
    const-string/jumbo v1, "fgbg_success"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "fg_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->addCommonInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    const-string/jumbo v1, "H5UcService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "init success in foreground: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    const-string/jumbo v0, "KEY_LAST_SUCCESS_ODEX_VERSION"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getStringConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1315
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/alipay/mobile/nebulaucsdk/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KEY_MAIN_UCODEX_INIT_SUCCESS"

    .line 1316
    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "no"

    const-string/jumbo v1, "h5_notifyUcInitSuccess"

    .line 1317
    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1318
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$2$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$2$1;-><init>(Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$2;)V

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 1334
    :cond_1
    const-string/jumbo v0, "KEY_LAST_SUCCESS_ODEX_VERSION"

    sget-object v1, Lcom/alipay/mobile/nebulaucsdk/a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->setStringConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1336
    const-string/jumbo v0, "KEY_MAIN_UCODEX_INIT_SUCCESS"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->setBooleanConfig(Ljava/lang/String;Z)V

    .line 1339
    :cond_2
    invoke-static {v5}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->preCreateOnMainWithDelay(I)V

    .line 1340
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$2$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$2$2;-><init>(Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$2;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 1353
    const-string/jumbo v0, "setupTaskSuccess"

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->endTrace(Ljava/lang/String;)V

    .line 1354
    const-string/jumbo v0, "initCore2success"

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->endTrace(Ljava/lang/String;)V

    .line 302
    return-void
.end method
