.class public Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl;
.super Ljava/lang/Object;
.source "H5IApplicationInstallerImpl.java"

# interfaces
.implements Linm;


# static fields
.field public static NEBULA_FALLBACK_APP_ID:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "H5IApplicationInstallerImpl"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "NebulaFallBackAppId"

    sput-object v0, Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl;->NEBULA_FALLBACK_APP_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl;->setEngineType(Ljava/lang/String;)V

    return-void
.end method

.method private setEngineType(Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 66
    new-instance v0, Linj;

    invoke-direct {v0}, Linj;-><init>()V

    .line 69
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    .line 71
    return-void
.end method


# virtual methods
.method public installApplication(Ljava/lang/String;Linm$a;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "iApplicationInstallCallback"    # Linm$a;
    .param p3, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 36
    const-string/jumbo v0, "URGENT_DISPLAY"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl$1;-><init>(Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl;Landroid/os/Bundle;Ljava/lang/String;Linm$a;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 62
    return-void
.end method
