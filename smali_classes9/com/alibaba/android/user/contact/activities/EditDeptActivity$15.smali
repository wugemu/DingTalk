.class final Lcom/alibaba/android/user/contact/activities/EditDeptActivity$15;
.super Ljava/lang/Object;
.source "EditDeptActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/EditDeptActivity;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    .prologue
    .line 441
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$15;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

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
    .line 441
    .line 1446
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$15;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->dismissLoadingDialog()V

    .line 1447
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.org.dept.delete"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1448
    const-string/jumbo v1, "dept_object"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$15;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->r(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1449
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$15;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1450
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.org.employee.remove.last_bread_crumb"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1451
    const-string/jumbo v1, "dept_object"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$15;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->r(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1452
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$15;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1453
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$15;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->finish()V

    .line 441
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 463
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$15;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->dismissLoadingDialog()V

    .line 464
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 459
    return-void
.end method
