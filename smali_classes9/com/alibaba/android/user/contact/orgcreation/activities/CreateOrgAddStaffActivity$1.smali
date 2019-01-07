.class final Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$1;
.super Ljava/lang/Object;
.source "CreateOrgAddStaffActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field final synthetic b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$a;

.field final synthetic c:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$1;->c:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iput-object p3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$1;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$a;

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
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 150
    check-cast p1, Ljava/util/List;

    .line 1153
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$1;->c:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$1;->c:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->dismissLoadingDialog()V

    .line 1158
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1159
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1160
    if-eqz v0, :cond_1

    .line 1161
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 1162
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 1164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1165
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1166
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.workapp.choose.people.from.contact"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1167
    const-string/jumbo v2, "choose_user_identities"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1168
    const-string/jumbo v1, "activity_identify"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$1;->c:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1169
    const-string/jumbo v1, "intent_key_is_increment"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1170
    const-string/jumbo v1, "intent_key_job_position_code"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$1;->c:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->b(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;)Lcom/alibaba/android/user/model/PositionData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1171
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$1;->c:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1172
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$1;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$a;

    invoke-interface {v0, v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$a;->a(Z)V

    .line 1173
    :cond_0
    :goto_0
    return-void

    .line 1177
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$1;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$a;

    invoke-interface {v0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$a;->a(Z)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 187
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$1;->c:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$1;->c:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->dismissLoadingDialog()V

    .line 193
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$1;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$a;->a(Z)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 183
    return-void
.end method
