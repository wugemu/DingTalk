.class final Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$14;
.super Ljava/lang/Object;
.source "ManageStaffActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Z)V
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
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 1353
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$14;->b:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    iput-boolean p2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$14;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1353
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 2356
    const-string/jumbo v0, "updateEmployee succeed"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2357
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$14;->b:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$14;->b:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->G(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->a(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Landroid/view/MenuItem;Z)V

    .line 2358
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$14;->b:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->f(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2359
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.org.employee.update"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2360
    if-eqz p1, :cond_0

    .line 2361
    const-string/jumbo v1, "employee_info"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2363
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$14;->b:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2364
    const-string/jumbo v1, "activity_identify"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$14;->b:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2366
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$14;->b:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    .line 2367
    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 2368
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$14;->b:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.workapp.user_profile_change"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 2371
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$14;->a:Z

    if-eqz v0, :cond_2

    .line 2372
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$14;->b:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->H(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V

    :goto_0
    return-void

    .line 2374
    :cond_2
    const-string/jumbo v0, "updateEmployee succeed"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2375
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$14;->b:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->finish()V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 1386
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$14;->b:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$14;->b:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->G(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->a(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Landroid/view/MenuItem;Z)V

    .line 1387
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$14;->b:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->f(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1388
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    const-string/jumbo v0, "updateEmployee failed,code=%s,reason=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-static {v0, v1}, Lfxo;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1390
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 4
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1381
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "updateEmployee onprogress:"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1382
    return-void
.end method
