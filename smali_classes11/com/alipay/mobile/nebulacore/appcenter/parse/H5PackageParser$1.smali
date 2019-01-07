.class final Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser$1;
.super Ljava/lang/Object;
.source "H5PackageParser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->notifyVerifyFailed(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$offlineHost:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser$1;->val$bundle:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser$1;->val$appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser$1;->val$offlineHost:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 436
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser$1;->val$bundle:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->parsePackage(Landroid/os/Bundle;Ljava/util/Map;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v0

    .line 437
    .local v0, "h5ParseResult":Lcom/alipay/mobile/nebulacore/api/H5ParseResult;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/alipay/mobile/nebulacore/api/H5ParseResult;->code:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 438
    const-string/jumbo v1, "H5PackageParser"

    const-string/jumbo v2, "parsePackage again is ok not to delete"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :goto_0
    return-void

    .line 440
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser$1;->val$appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser$1;->val$offlineHost:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser$1;->val$bundle:Landroid/os/Bundle;

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->notifyFail(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method
