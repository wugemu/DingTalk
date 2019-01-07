.class final Lcom/alibaba/android/user/contact/activities/AddDeptActivity$3;
.super Ljava/lang/Object;
.source "AddDeptActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/AddDeptActivity;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/AddDeptActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/AddDeptActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/AddDeptActivity;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity$3;->a:Lcom/alibaba/android/user/contact/activities/AddDeptActivity;

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
    .line 162
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 1165
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity$3;->a:Lcom/alibaba/android/user/contact/activities/AddDeptActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->dismissLoadingDialog()V

    .line 1166
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.org.dept.add"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1167
    if-eqz p1, :cond_0

    .line 1168
    const-string/jumbo v1, "dept_object"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1171
    :cond_0
    const-string/jumbo v1, "parent_dept_id"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity$3;->a:Lcom/alibaba/android/user/contact/activities/AddDeptActivity;

    .line 1172
    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->a(Lcom/alibaba/android/user/contact/activities/AddDeptActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    move-result-object v2

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    .line 1171
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1173
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity$3;->a:Lcom/alibaba/android/user/contact/activities/AddDeptActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    .line 1174
    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1175
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity$3;->a:Lcom/alibaba/android/user/contact/activities/AddDeptActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->finish()V

    .line 162
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity$3;->a:Lcom/alibaba/android/user/contact/activities/AddDeptActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->dismissLoadingDialog()V

    .line 186
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 181
    return-void
.end method
