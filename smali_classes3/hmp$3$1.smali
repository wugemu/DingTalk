.class final Lhmp$3$1;
.super Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;
.source "MiniAppBundleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhmp$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhmp$3;


# direct methods
.method constructor <init>(Lhmp$3;)V
    .locals 0
    .param p1, "this$1"    # Lhmp$3;

    .prologue
    .line 427
    iput-object p1, p0, Lhmp$3$1;->a:Lhmp$3;

    invoke-direct {p0}, Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ZZ)V
    .locals 5
    .param p1, "success"    # Z
    .param p2, "isLimit"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 430
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;->onResult(ZZ)V

    .line 431
    if-eqz p1, :cond_1

    .line 432
    iget-object v0, p0, Lhmp$3$1;->a:Lhmp$3;

    iget-object v0, v0, Lhmp$3;->g:Lhmp;

    iget-object v1, p0, Lhmp$3$1;->a:Lhmp$3;

    iget-object v1, v1, Lhmp$3;->a:Ljava/lang/String;

    iget-object v2, p0, Lhmp$3$1;->a:Lhmp$3;

    iget-object v2, v2, Lhmp$3;->b:Ljava/lang/String;

    iget-object v3, p0, Lhmp$3$1;->a:Lhmp$3;

    iget v3, v3, Lhmp$3;->c:I

    iget-object v4, p0, Lhmp$3$1;->a:Lhmp$3;

    iget-object v4, v4, Lhmp$3;->d:Lhlo;

    invoke-static {v0, v1, v2, v3, v4}, Lhmp;->a(Lhmp;Ljava/lang/String;Ljava/lang/String;ILhlo;)V

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    iget-object v0, p0, Lhmp$3$1;->a:Lhmp$3;

    iget-object v0, v0, Lhmp$3;->d:Lhlo;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lhmp$3$1;->a:Lhmp$3;

    iget-object v0, v0, Lhmp$3;->d:Lhlo;

    const-string/jumbo v1, "no_downloaded_pkg"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "update target app "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lhmp$3$1;->a:Lhmp$3;

    iget-object v3, v3, Lhmp$3;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lhmp$3$1;->a:Lhmp$3;

    iget-object v3, v3, Lhmp$3;->b:Ljava/lang/String;

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
