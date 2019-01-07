.class final Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$12;
.super Landroid/content/BroadcastReceiver;
.source "UserContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$12;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 386
    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$12;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-virtual {v6}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->isDestroyed()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    const-string/jumbo v6, "com.workapp.add.new.fragment"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 390
    const-string/jumbo v6, "fragment_key"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 391
    .local v3, "fragmentKey":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$12;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    const-string/jumbo v7, "conversation_id"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 392
    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$12;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->e(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 393
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 394
    .local v1, "bundle":Landroid/os/Bundle;
    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$12;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->f(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 395
    const-string/jumbo v6, "im_navigator_from"

    iget-object v7, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$12;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->f(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :cond_2
    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$12;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-virtual {v6}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "choose_conversation_from_contact_logic"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    .line 398
    .local v4, "s":Ljava/io/Serializable;
    if-nez v4, :cond_3

    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$12;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->g(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 399
    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$12;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->g(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getChooseConversationHandler()Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    move-result-object v4

    .line 401
    :cond_3
    if-eqz v4, :cond_5

    instance-of v6, v4, Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    if-eqz v6, :cond_5

    .line 402
    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$12;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->e(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 403
    const-string/jumbo v6, "conversation_id"

    iget-object v7, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$12;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->e(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :cond_4
    check-cast v4, Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    .end local v4    # "s":Ljava/io/Serializable;
    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$12;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v1, v7, v8

    invoke-interface {v4, v6, v7}, Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;->doLogic(Landroid/app/Activity;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 406
    .restart local v4    # "s":Ljava/io/Serializable;
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 407
    const-string/jumbo v6, "bread_node_name"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "breadName":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$12;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-virtual {v6, v3, v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 411
    .end local v0    # "breadName":Ljava/lang/String;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "fragmentKey":Ljava/lang/String;
    .end local v4    # "s":Ljava/io/Serializable;
    :cond_6
    const-string/jumbo v6, "action_select_contact_result"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 412
    const-string/jumbo v6, "UserContactActivity"

    const-string/jumbo v7, "activity_identify"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 413
    const-string/jumbo v6, "key_selected_user_list"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 414
    .local v5, "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$12;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->h(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->setChoosedList(Ljava/util/ArrayList;)V

    .line 415
    const-string/jumbo v6, "key_selected_dept_list"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 416
    .local v2, "deptList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$12;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->i(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->setChoosedList(Ljava/util/ArrayList;)V

    .line 418
    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$12;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-virtual {v6, v8}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->b(Z)V

    .line 419
    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$12;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->j(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    instance-of v6, v6, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    if-eqz v6, :cond_0

    .line 420
    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$12;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->j(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->H()V

    goto/16 :goto_0

    .line 423
    .end local v2    # "deptList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .end local v5    # "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_7
    const-string/jumbo v6, "action_select_do_logic_fail"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 424
    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$12;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Landroid/widget/Button;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 425
    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$12;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0
.end method
