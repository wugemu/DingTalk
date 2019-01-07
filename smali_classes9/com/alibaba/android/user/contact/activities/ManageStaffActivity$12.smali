.class final Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$12;
.super Ljava/lang/Object;
.source "ManageStaffActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$12;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 343
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$12;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    const-class v2, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 344
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$12;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->k(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 345
    const-string/jumbo v1, "outside_position_name"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$12;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->k(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->externalTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$12;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 348
    return-void
.end method
