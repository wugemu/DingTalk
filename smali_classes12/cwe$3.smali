.class final Lcwe$3;
.super Ljava/lang/Object;
.source "MemberAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcwe;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/widget/CheckBox;

.field final synthetic c:Ldqw;

.field final synthetic d:Lcwe;


# direct methods
.method constructor <init>(Lcwe;ZLandroid/widget/CheckBox;Ldqw;)V
    .locals 0
    .param p1, "this$0"    # Lcwe;

    .prologue
    .line 504
    iput-object p1, p0, Lcwe$3;->d:Lcwe;

    iput-boolean p2, p0, Lcwe$3;->a:Z

    iput-object p3, p0, Lcwe$3;->b:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcwe$3;->c:Ldqw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 507
    const/4 v4, 0x2

    iget-object v7, p0, Lcwe$3;->d:Lcwe;

    invoke-static {v7}, Lcwe;->h(Lcwe;)I

    move-result v7

    if-eq v4, v7, :cond_13

    .line 508
    iget-boolean v4, p0, Lcwe$3;->a:Z

    if-eqz v4, :cond_1

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    iget-object v4, p0, Lcwe$3;->d:Lcwe;

    invoke-static {v4}, Lcwe;->b(Lcwe;)Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 512
    iget-object v7, p0, Lcwe$3;->b:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcwe$3;->b:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 513
    iget-object v4, p0, Lcwe$3;->d:Lcwe;

    invoke-static {v4}, Lcwe;->a(Lcwe;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v7, p0, Lcwe$3;->c:Ldqw;

    iget-object v7, v7, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v8, p0, Lcwe$3;->b:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    iget-object v4, p0, Lcwe$3;->b:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 515
    iget-object v4, p0, Lcwe$3;->d:Lcwe;

    invoke-static {v4}, Lcwe;->c(Lcwe;)I

    move-result v4

    iget-object v7, p0, Lcwe$3;->d:Lcwe;

    invoke-static {v7}, Lcwe;->b(Lcwe;)Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;->b()I

    move-result v7

    if-ne v4, v7, :cond_6

    .line 516
    iget-object v4, p0, Lcwe$3;->d:Lcwe;

    invoke-static {v4}, Lcwe;->a(Lcwe;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v4, p0, Lcwe$3;->c:Ldqw;

    iget-object v4, v4, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-object v4, p0, Lcwe$3;->b:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v5

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    iget-object v7, p0, Lcwe$3;->b:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcwe$3;->b:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_4

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 518
    iget-object v4, p0, Lcwe$3;->d:Lcwe;

    invoke-static {v4}, Lcwe;->d(Lcwe;)Landroid/app/Activity;

    move-result-object v7

    iget-object v4, p0, Lcwe$3;->d:Lcwe;

    invoke-static {v4}, Lcwe;->e(Lcwe;)I

    move-result v4

    if-nez v4, :cond_5

    sget v4, Lctk$i;->choose_limit:I

    :goto_4
    new-array v5, v5, [Ljava/lang/Object;

    iget-object v8, p0, Lcwe$3;->d:Lcwe;

    invoke-static {v8}, Lcwe;->c(Lcwe;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-virtual {v7, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcms;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    move v4, v6

    .line 512
    goto/16 :goto_1

    :cond_3
    move v4, v6

    .line 516
    goto :goto_2

    :cond_4
    move v4, v6

    .line 517
    goto :goto_3

    .line 518
    :cond_5
    iget-object v4, p0, Lcwe$3;->d:Lcwe;

    invoke-static {v4}, Lcwe;->e(Lcwe;)I

    move-result v4

    goto :goto_4

    .line 520
    :cond_6
    iget-object v4, p0, Lcwe$3;->d:Lcwe;

    invoke-static {v4}, Lcwe;->b(Lcwe;)Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;

    move-result-object v4

    iget-object v5, p0, Lcwe$3;->c:Ldqw;

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;->a(Ldqw;)V

    goto/16 :goto_0

    .line 523
    :cond_7
    iget-object v4, p0, Lcwe$3;->d:Lcwe;

    invoke-static {v4}, Lcwe;->b(Lcwe;)Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;

    move-result-object v4

    iget-object v5, p0, Lcwe$3;->c:Ldqw;

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;->b(Ldqw;)V

    goto/16 :goto_0

    .line 525
    :cond_8
    iget-object v4, p0, Lcwe$3;->d:Lcwe;

    invoke-static {v4}, Lcwe;->f(Lcwe;)Lcif;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 526
    iget-object v7, p0, Lcwe$3;->b:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcwe$3;->b:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_9

    move v4, v5

    :goto_5
    invoke-virtual {v7, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 527
    iget-object v4, p0, Lcwe$3;->d:Lcwe;

    invoke-static {v4}, Lcwe;->a(Lcwe;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v7, p0, Lcwe$3;->c:Ldqw;

    iget-object v7, v7, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v8, p0, Lcwe$3;->b:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    iget-object v4, p0, Lcwe$3;->b:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 529
    iget-object v4, p0, Lcwe$3;->d:Lcwe;

    invoke-static {v4}, Lcwe;->c(Lcwe;)I

    move-result v4

    const/16 v7, 0x64

    if-gt v4, v7, :cond_d

    .line 530
    iget-object v4, p0, Lcwe$3;->d:Lcwe;

    invoke-static {v4}, Lcwe;->a(Lcwe;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v4, p0, Lcwe$3;->c:Ldqw;

    iget-object v4, v4, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-object v4, p0, Lcwe$3;->b:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_a

    move v4, v5

    :goto_6
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    iget-object v7, p0, Lcwe$3;->b:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcwe$3;->b:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_b

    move v4, v5

    :goto_7
    invoke-virtual {v7, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 532
    iget-object v4, p0, Lcwe$3;->d:Lcwe;

    invoke-static {v4}, Lcwe;->d(Lcwe;)Landroid/app/Activity;

    move-result-object v7

    iget-object v4, p0, Lcwe$3;->d:Lcwe;

    invoke-static {v4}, Lcwe;->e(Lcwe;)I

    move-result v4

    if-nez v4, :cond_c

    sget v4, Lctk$i;->choose_limit:I

    :goto_8
    new-array v5, v5, [Ljava/lang/Object;

    iget-object v8, p0, Lcwe$3;->d:Lcwe;

    invoke-static {v8}, Lcwe;->c(Lcwe;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-virtual {v7, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcms;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    move v4, v6

    .line 526
    goto/16 :goto_5

    :cond_a
    move v4, v6

    .line 530
    goto :goto_6

    :cond_b
    move v4, v6

    .line 531
    goto :goto_7

    .line 532
    :cond_c
    iget-object v4, p0, Lcwe$3;->d:Lcwe;

    invoke-static {v4}, Lcwe;->e(Lcwe;)I

    move-result v4

    goto :goto_8

    .line 534
    :cond_d
    iget-object v4, p0, Lcwe$3;->d:Lcwe;

    invoke-static {v4}, Lcwe;->f(Lcwe;)Lcif;

    move-result-object v4

    const/16 v5, 0x3e9

    iget-object v6, p0, Lcwe$3;->c:Ldqw;

    iget-object v6, v6, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {v6}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcif;->a(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 537
    :cond_e
    iget-object v4, p0, Lcwe$3;->d:Lcwe;

    invoke-static {v4}, Lcwe;->f(Lcwe;)Lcif;

    move-result-object v4

    const/16 v5, 0x3ea

    iget-object v6, p0, Lcwe$3;->c:Ldqw;

    iget-object v6, v6, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {v6}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcif;->a(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 539
    :cond_f
    iget-object v4, p0, Lcwe$3;->d:Lcwe;

    invoke-static {v4}, Lcwe;->g(Lcwe;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 540
    iget-object v4, p0, Lcwe$3;->c:Ldqw;

    iget-object v4, v4, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v3

    .line 541
    .local v3, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v4, p0, Lcwe$3;->d:Lcwe;

    invoke-static {v4}, Lcwe;->h(Lcwe;)I

    move-result v4

    if-ne v4, v5, :cond_10

    .line 542
    iget-object v4, p0, Lcwe$3;->d:Lcwe;

    invoke-static {v4}, Lcwe;->g(Lcwe;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isDisable(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcwe$3;->d:Lcwe;

    invoke-static {v4}, Lcwe;->g(Lcwe;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isRequestSelect(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 545
    iget-object v4, p0, Lcwe$3;->d:Lcwe;

    invoke-static {v4}, Lcwe;->g(Lcwe;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->onSingleChoose(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 547
    :cond_10
    iget-object v4, p0, Lcwe$3;->b:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_12

    .line 548
    iget-object v4, p0, Lcwe$3;->b:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcwe$3;->d:Lcwe;

    invoke-static {v5}, Lcwe;->g(Lcwe;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->addChooseObject(Ljava/lang/Object;)Z

    move-result v5

    .line 550
    :cond_11
    :goto_9
    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    :cond_12
    iget-object v4, p0, Lcwe$3;->b:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcwe$3;->d:Lcwe;

    invoke-static {v7}, Lcwe;->g(Lcwe;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-result-object v7

    invoke-interface {v7, v3}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->removeChooseObject(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    move v5, v6

    goto :goto_9

    .line 555
    .end local v3    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_13
    const-string/jumbo v4, "ACTIVITY_IDENTIFY_AT"

    iget-object v6, p0, Lcwe$3;->d:Lcwe;

    invoke-static {v6}, Lcwe;->i(Lcwe;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string/jumbo v4, "activity_identify_remove"

    iget-object v6, p0, Lcwe$3;->d:Lcwe;

    invoke-static {v6}, Lcwe;->i(Lcwe;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 556
    :cond_14
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 557
    .local v2, "mSelectedUseModelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.workapp.choose.people.from.group.member"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 558
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 559
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 560
    const-string/jumbo v4, "activity_identify"

    iget-object v5, p0, Lcwe$3;->d:Lcwe;

    invoke-static {v5}, Lcwe;->i(Lcwe;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    iget-object v4, p0, Lcwe$3;->c:Ldqw;

    iget-object v4, v4, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    const-string/jumbo v4, "choose_user_identities"

    check-cast v2, Ljava/util/ArrayList;

    .end local v2    # "mSelectedUseModelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 563
    iget-object v4, p0, Lcwe$3;->d:Lcwe;

    invoke-static {v4}, Lcwe;->d(Lcwe;)Landroid/app/Activity;

    move-result-object v4

    instance-of v4, v4, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    if-eqz v4, :cond_15

    .line 564
    const-string/jumbo v5, "intent_key_at_seed"

    iget-object v4, p0, Lcwe$3;->d:Lcwe;

    invoke-static {v4}, Lcwe;->d(Lcwe;)Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    .line 1128
    iget-wide v6, v4, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->b:J

    .line 564
    invoke-virtual {v1, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 566
    :cond_15
    iget-object v4, p0, Lcwe$3;->d:Lcwe;

    invoke-static {v4}, Lcwe;->d(Lcwe;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v4

    invoke-virtual {v4, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 567
    iget-object v4, p0, Lcwe$3;->d:Lcwe;

    invoke-static {v4}, Lcwe;->d(Lcwe;)Landroid/app/Activity;

    move-result-object v4

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_0

    .line 568
    iget-object v4, p0, Lcwe$3;->d:Lcwe;

    invoke-static {v4}, Lcwe;->d(Lcwe;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 570
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_16
    const-string/jumbo v4, "ACTIVITY_IDENTIFY_TRANSMIT"

    iget-object v6, p0, Lcwe$3;->d:Lcwe;

    invoke-static {v6}, Lcwe;->i(Lcwe;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 571
    iget-object v4, p0, Lcwe$3;->d:Lcwe;

    iget-object v5, p0, Lcwe$3;->c:Ldqw;

    iget-object v5, v5, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {v4, v5}, Lcwe;->a(Lcwe;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    goto/16 :goto_0

    .line 573
    :cond_17
    iget-object v4, p0, Lcwe$3;->d:Lcwe;

    invoke-static {v4}, Lcwe;->j(Lcwe;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    invoke-static {v4}, Ldjl;->k(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 574
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    iget-object v6, p0, Lcwe$3;->d:Lcwe;

    invoke-static {v6}, Lcwe;->d(Lcwe;)Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcwe$3;->c:Ldqw;

    iget-object v7, v7, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v8, p0, Lcwe$3;->d:Lcwe;

    invoke-static {v8}, Lcwe;->k(Lcwe;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v7, v8, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 576
    :cond_18
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    iget-object v5, p0, Lcwe$3;->d:Lcwe;

    invoke-static {v5}, Lcwe;->d(Lcwe;)Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcwe$3;->c:Ldqw;

    iget-object v6, v6, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v7, p0, Lcwe$3;->d:Lcwe;

    invoke-static {v7}, Lcwe;->k(Lcwe;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
