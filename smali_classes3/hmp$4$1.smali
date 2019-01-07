.class final Lhmp$4$1;
.super Ljava/lang/Object;
.source "MiniAppBundleManager.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhmp$4;->onFinish(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhmp$4;


# direct methods
.method constructor <init>(Lhmp$4;)V
    .locals 0
    .param p1, "this$1"    # Lhmp$4;

    .prologue
    .line 501
    iput-object p1, p0, Lhmp$4$1;->a:Lhmp$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ZZ)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "isPatch"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 505
    if-eqz p1, :cond_1

    .line 506
    iget-object v0, p0, Lhmp$4$1;->a:Lhmp$4;

    iget-object v0, v0, Lhmp$4;->a:Lhlo;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lhmp$4$1;->a:Lhmp$4;

    iget-object v0, v0, Lhmp$4;->a:Lhlo;

    invoke-interface {v0}, Lhlo;->a()V

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    iget-object v0, p0, Lhmp$4$1;->a:Lhmp$4;

    iget-object v0, v0, Lhmp$4;->a:Lhlo;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lhmp$4$1;->a:Lhmp$4;

    iget-object v0, v0, Lhmp$4;->a:Lhlo;

    const-string/jumbo v1, "no_installed_pkg"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "install target app "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lhmp$4$1;->a:Lhmp$4;

    iget-object v3, v3, Lhmp$4;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lhmp$4$1;->a:Lhmp$4;

    iget-object v3, v3, Lhmp$4;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " fail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lhlo;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
