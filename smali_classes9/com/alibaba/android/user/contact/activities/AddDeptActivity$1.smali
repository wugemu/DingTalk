.class final Lcom/alibaba/android/user/contact/activities/AddDeptActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "AddDeptActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/AddDeptActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/AddDeptActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/AddDeptActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/AddDeptActivity;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity$1;->a:Lcom/alibaba/android/user/contact/activities/AddDeptActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 64
    const-string/jumbo v0, "com.workapp.choose.org.department"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity$1;->a:Lcom/alibaba/android/user/contact/activities/AddDeptActivity;

    const-string/jumbo v0, "key_org_selected_single_dept"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-static {v1, v0}, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->a(Lcom/alibaba/android/user/contact/activities/AddDeptActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 68
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity$1;->a:Lcom/alibaba/android/user/contact/activities/AddDeptActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->a(Lcom/alibaba/android/user/contact/activities/AddDeptActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity$1;->a:Lcom/alibaba/android/user/contact/activities/AddDeptActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->b(Lcom/alibaba/android/user/contact/activities/AddDeptActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity$1;->a:Lcom/alibaba/android/user/contact/activities/AddDeptActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->a(Lcom/alibaba/android/user/contact/activities/AddDeptActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->setHint(Ljava/lang/String;)V

    .line 72
    :cond_0
    return-void
.end method
