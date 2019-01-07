.class final Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$6;
.super Ljava/lang/Object;
.source "CreateOrgActivityV4.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;
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
        "Lfon;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    .prologue
    .line 835
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$6;->c:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$6;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$6;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 835
    check-cast p1, Lfon;

    .line 1838
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$6;->c:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1841
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$6;->c:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->r(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 1842
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$6;->c:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->dismissLoadingDialog()V

    .line 1843
    if-eqz p1, :cond_0

    .line 1844
    iget-object v0, p1, Lfon;->a:Lcfi;

    if-nez v0, :cond_1

    .line 1845
    iget-object v0, p1, Lfon;->b:Lfom;

    if-eqz v0, :cond_0

    .line 1846
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$6;->c:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    iget-object v1, p1, Lfon;->b:Lfom;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;Lfom;)V

    :cond_0
    :goto_0
    return-void

    .line 1849
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$6;->c:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    iget-object v1, p1, Lfon;->a:Lcfi;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$6;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;Lcfi;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 862
    const-string/jumbo v0, "bh_orgcreation_error_server"

    const-string/jumbo v1, "code=%s"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 1315
    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 864
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$6;->c:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 879
    :cond_0
    :goto_0
    return-void

    .line 868
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$6;->c:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->r(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 869
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$6;->c:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->dismissLoadingDialog()V

    .line 870
    const-string/jumbo v0, "12115"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 871
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$6;->c:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$6;->c:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$6;->c:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    sget v3, Lezg$l;->dt_common_i_know:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;

    .line 876
    :goto_1
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$6;->b:Z

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$6;->c:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->finish()V

    goto :goto_0

    .line 873
    :cond_2
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 857
    return-void
.end method
