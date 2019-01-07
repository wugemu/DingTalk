.class final Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$3;
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 284
    check-cast p1, Lcom/uc/webview/export/utility/SetupTask;

    .line 1288
    if-eqz p1, :cond_1

    .line 1289
    invoke-virtual {p1}, Lcom/uc/webview/export/utility/SetupTask;->getException()Lcom/uc/webview/export/internal/setup/UCSetupException;

    move-result-object v6

    .line 1291
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 1292
    if-eqz v0, :cond_0

    .line 1293
    const-string/jumbo v1, "H5_UC_INIT_EXCEPTION"

    sget-object v2, Lcom/uc/webview/export/Build$Version;->NAME:Ljava/lang/String;

    invoke-static {v6}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v4, v6

    .line 1296
    :cond_1
    const-string/jumbo v0, "H5UcService"

    const-string/jumbo v1, "uc kernel init exception"

    invoke-static {v0, v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1297
    sput-boolean v7, Liog;->a:Z

    .line 1298
    sput-boolean v7, Liog;->b:Z

    .line 1299
    sput-boolean v7, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sUcInited:Z

    .line 284
    return-void
.end method
