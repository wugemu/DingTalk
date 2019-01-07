.class final Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ManageStaffActivity.java"


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
    .line 213
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 218
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-virtual {v4}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    const-string/jumbo v4, "com.workapp.choose.people.from.contact"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 224
    const-string/jumbo v4, "org_addstaff_addressList_confirm_click"

    const-string/jumbo v5, "org_id=%d"

    new-array v6, v7, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->a(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v10

    .line 1315
    const/4 v7, 0x0

    invoke-static {v7, v4, v5, v6}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->b(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->c(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 232
    const-string/jumbo v4, "IDENTIFIY_MANAGE_STAFF"

    const-string/jumbo v5, "activity_identify"

    .line 233
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 238
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "choose_user_identities"

    .line 239
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 240
    .local v2, "identityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 243
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 244
    .local v3, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v3, :cond_0

    .line 249
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->d(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v4

    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->e(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->f(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 255
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1$1;

    invoke-direct {v5, p0, v3}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1$1;-><init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 278
    .end local v2    # "identityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local v3    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_2
    const-string/jumbo v4, "com.workapp.choose.org.department"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 280
    const-string/jumbo v4, "key_org_selected_depts"

    .line 281
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 282
    .local v0, "deptList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v4, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->a(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Ljava/util/List;)Ljava/util/List;

    .line 283
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->h(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v5, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->b(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 284
    .end local v0    # "deptList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    :cond_3
    const-string/jumbo v4, "action_key_org_mail_setting"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 286
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    const-string/jumbo v5, "intent_key_mail_name"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->b(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 287
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    const-string/jumbo v5, "intent_key_mail_domain"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->c(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 288
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->i(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->j(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 291
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->k(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v4

    if-nez v4, :cond_4

    .line 292
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    new-instance v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;-><init>()V

    invoke-static {v4, v5}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->a(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 294
    :cond_4
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->k(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->i(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->j(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgAuthEmail:Ljava/lang/String;

    .line 295
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->l(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V

    goto/16 :goto_0

    .line 296
    :cond_5
    const-string/jumbo v4, "hrm_leaveJob"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 297
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.workapp.org.employee.delete"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    .local v1, "i":Landroid/content/Intent;
    const-string/jumbo v4, "user_id"

    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->m(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)J

    move-result-wide v6

    invoke-virtual {v1, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 299
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-virtual {v4}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v4

    invoke-virtual {v4, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 300
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-virtual {v4}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "com.workapp.user_profile_change"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ldq;->a(Landroid/content/Intent;)Z

    .line 301
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-virtual {v4}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->finish()V

    goto/16 :goto_0
.end method
