.class final Lgfp$4;
.super Ljava/lang/Object;
.source "PermissionSettingPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgfp;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lgfp;


# direct methods
.method constructor <init>(Lgfp;Z)V
    .locals 0
    .param p1, "this$0"    # Lgfp;

    .prologue
    .line 704
    iput-object p1, p0, Lgfp$4;->b:Lgfp;

    iput-boolean p2, p0, Lgfp$4;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 704
    check-cast p1, Ljava/lang/Long;

    .line 2707
    iget-object v0, p0, Lgfp$4;->b:Lgfp;

    .line 3062
    iget-object v0, v0, Lgfp;->a:Landroid/app/Activity;

    .line 2707
    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2711
    iget-object v0, p0, Lgfp$4;->b:Lgfp;

    .line 4062
    iget-object v0, v0, Lgfp;->g:Ljava/util/Map;

    .line 2711
    const-wide/16 v2, 0x1389

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2712
    iget-object v0, p0, Lgfp$4;->b:Lgfp;

    .line 5062
    iget-object v0, v0, Lgfp;->a:Landroid/app/Activity;

    .line 2712
    sget v1, Lfzs$h;->and_concern_setting_success:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 2714
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    iget-object v1, p0, Lgfp$4;->b:Lgfp;

    .line 6062
    iget-object v1, v1, Lgfp;->b:Ljava/lang/String;

    .line 2714
    iget-boolean v2, p0, Lgfp$4;->a:Z

    invoke-virtual {v0, v1, v2}, Lfzv;->b(Ljava/lang/String;Z)V

    .line 2716
    iget-object v0, p0, Lgfp$4;->b:Lgfp;

    .line 7062
    iget-object v0, v0, Lgfp;->c:Ljava/lang/String;

    .line 7109
    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 2716
    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    .line 2721
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.alibaba.dingtalk.space.read.only.change"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2722
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2723
    const-string/jumbo v3, "doc_readonly"

    iget-boolean v0, p0, Lgfp$4;->a:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "1"

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2724
    const-string/jumbo v0, "space_id"

    iget-object v3, p0, Lgfp$4;->b:Lgfp;

    .line 8062
    iget-object v3, v3, Lgfp;->b:Ljava/lang/String;

    .line 8109
    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 2724
    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2725
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2726
    iget-object v0, p0, Lgfp$4;->b:Lgfp;

    .line 9062
    iget-object v0, v0, Lgfp;->a:Landroid/app/Activity;

    .line 2726
    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 704
    :cond_0
    return-void

    .line 2723
    :cond_1
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 736
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v2, "PermissionSettingPresenter"

    const-string/jumbo v3, "setSafeMode"

    const/4 v4, 0x0

    invoke-static {v3, p1, p2, v4}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Lgfp$4;->b:Lgfp;

    .line 1062
    iget-object v0, v0, Lgfp;->a:Landroid/app/Activity;

    .line 739
    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 745
    :goto_0
    return-void

    .line 743
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    iget-object v0, p0, Lgfp$4;->b:Lgfp;

    .line 2062
    iget-object v2, v0, Lgfp;->l:Lgfn$b;

    .line 744
    iget-boolean v0, p0, Lgfp$4;->a:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-interface {v2, v0, v1}, Lgfn$b;->a(ZZ)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 732
    return-void
.end method
