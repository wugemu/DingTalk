.class public Lcom/taobao/securityjni/PkgValidityCheck;
.super Ljava/lang/Object;
.source "PkgValidityCheck.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static FLAG_DEX_FILE:I

.field public static FLAG_DEX_MANIFEST:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput v0, Lcom/taobao/securityjni/PkgValidityCheck;->FLAG_DEX_MANIFEST:I

    .line 11
    const/4 v0, 0x1

    sput v0, Lcom/taobao/securityjni/PkgValidityCheck;->FLAG_DEX_FILE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public varargs checkEnvAndFiles([Ljava/lang/String;)I
    .locals 1
    .param p1, "filePath"    # [Ljava/lang/String;

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public getDexHash(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "timestamp"    # Ljava/lang/String;
    .param p2, "saltKey"    # Ljava/lang/String;
    .param p3, "sourceFlag"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 18
    invoke-static {}, Lcom/taobao/securityjni/GlobalInit;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getPackageValidityCheckComp()Lcom/taobao/wireless/security/sdk/pkgvaliditycheck/IPkgValidityCheckComponent;

    move-result-object v0

    .line 19
    .local v0, "com":Lcom/taobao/wireless/security/sdk/pkgvaliditycheck/IPkgValidityCheckComponent;
    if-eqz v0, :cond_0

    .line 20
    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/wireless/security/sdk/pkgvaliditycheck/IPkgValidityCheckComponent;->getDexHash(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 22
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPackageValid(Ljava/lang/String;)Z
    .locals 1
    .param p1, "absolutePkgPath"    # Ljava/lang/String;

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method
