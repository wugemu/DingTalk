.class final Lcwe$1;
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
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field final synthetic b:Landroid/widget/CheckBox;

.field final synthetic c:Ldqw;

.field final synthetic d:Lcwe;


# direct methods
.method constructor <init>(Lcwe;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Landroid/widget/CheckBox;Ldqw;)V
    .locals 0
    .param p1, "this$0"    # Lcwe;

    .prologue
    .line 455
    iput-object p1, p0, Lcwe$1;->d:Lcwe;

    iput-object p2, p0, Lcwe$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iput-object p3, p0, Lcwe$1;->b:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcwe$1;->c:Ldqw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 458
    iget-object v1, p0, Lcwe$1;->d:Lcwe;

    invoke-static {v1}, Lcwe;->a(Lcwe;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v1, p0, Lcwe$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v1, p1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    iget-object v1, p0, Lcwe$1;->d:Lcwe;

    invoke-static {v1}, Lcwe;->b(Lcwe;)Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;

    move-result-object v1

    if-eqz v1, :cond_6

    move-object v1, p1

    .line 460
    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 461
    iget-object v1, p0, Lcwe$1;->d:Lcwe;

    invoke-static {v1}, Lcwe;->c(Lcwe;)I

    move-result v1

    iget-object v4, p0, Lcwe$1;->d:Lcwe;

    invoke-static {v4}, Lcwe;->b(Lcwe;)Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;->b()I

    move-result v4

    if-ne v1, v4, :cond_4

    .line 462
    iget-object v1, p0, Lcwe$1;->d:Lcwe;

    invoke-static {v1}, Lcwe;->a(Lcwe;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v1, p0, Lcwe$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v1, p1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    iget-object v4, p0, Lcwe$1;->b:Landroid/widget/CheckBox;

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 464
    iget-object v1, p0, Lcwe$1;->d:Lcwe;

    invoke-static {v1}, Lcwe;->d(Lcwe;)Landroid/app/Activity;

    move-result-object v4

    iget-object v1, p0, Lcwe$1;->d:Lcwe;

    invoke-static {v1}, Lcwe;->d(Lcwe;)Landroid/app/Activity;

    move-result-object v5

    iget-object v1, p0, Lcwe$1;->d:Lcwe;

    invoke-static {v1}, Lcwe;->e(Lcwe;)I

    move-result v1

    if-nez v1, :cond_3

    sget v1, Lctk$i;->choose_limit:I

    :goto_2
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcwe$1;->d:Lcwe;

    invoke-static {v6}, Lcwe;->c(Lcwe;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-virtual {v5, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 493
    :cond_0
    :goto_3
    return-void

    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    move v1, v3

    .line 462
    goto :goto_0

    .end local p1    # "v":Landroid/view/View;
    :cond_2
    move v1, v3

    .line 463
    goto :goto_1

    .line 464
    :cond_3
    iget-object v1, p0, Lcwe$1;->d:Lcwe;

    invoke-static {v1}, Lcwe;->e(Lcwe;)I

    move-result v1

    goto :goto_2

    .line 466
    .restart local p1    # "v":Landroid/view/View;
    :cond_4
    iget-object v1, p0, Lcwe$1;->d:Lcwe;

    invoke-static {v1}, Lcwe;->b(Lcwe;)Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;

    move-result-object v1

    iget-object v2, p0, Lcwe$1;->c:Ldqw;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;->a(Ldqw;)V

    goto :goto_3

    .line 470
    :cond_5
    iget-object v1, p0, Lcwe$1;->d:Lcwe;

    invoke-static {v1}, Lcwe;->b(Lcwe;)Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;

    move-result-object v1

    iget-object v2, p0, Lcwe$1;->c:Ldqw;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;->b(Ldqw;)V

    goto :goto_3

    .line 472
    :cond_6
    iget-object v1, p0, Lcwe$1;->d:Lcwe;

    invoke-static {v1}, Lcwe;->f(Lcwe;)Lcif;

    move-result-object v1

    if-eqz v1, :cond_c

    move-object v1, p1

    .line 473
    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 474
    iget-object v1, p0, Lcwe$1;->d:Lcwe;

    invoke-static {v1}, Lcwe;->c(Lcwe;)I

    move-result v1

    const/16 v4, 0x64

    if-gt v1, v4, :cond_a

    .line 475
    iget-object v1, p0, Lcwe$1;->d:Lcwe;

    invoke-static {v1}, Lcwe;->a(Lcwe;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v1, p0, Lcwe$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v1, p1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    iget-object v4, p0, Lcwe$1;->b:Landroid/widget/CheckBox;

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_5
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 477
    iget-object v1, p0, Lcwe$1;->d:Lcwe;

    invoke-static {v1}, Lcwe;->d(Lcwe;)Landroid/app/Activity;

    move-result-object v4

    iget-object v1, p0, Lcwe$1;->d:Lcwe;

    invoke-static {v1}, Lcwe;->d(Lcwe;)Landroid/app/Activity;

    move-result-object v5

    iget-object v1, p0, Lcwe$1;->d:Lcwe;

    invoke-static {v1}, Lcwe;->e(Lcwe;)I

    move-result v1

    if-nez v1, :cond_9

    sget v1, Lctk$i;->choose_limit:I

    :goto_6
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcwe$1;->d:Lcwe;

    invoke-static {v6}, Lcwe;->c(Lcwe;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-virtual {v5, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .restart local p1    # "v":Landroid/view/View;
    :cond_7
    move v1, v3

    .line 475
    goto :goto_4

    .end local p1    # "v":Landroid/view/View;
    :cond_8
    move v1, v3

    .line 476
    goto :goto_5

    .line 477
    :cond_9
    iget-object v1, p0, Lcwe$1;->d:Lcwe;

    invoke-static {v1}, Lcwe;->e(Lcwe;)I

    move-result v1

    goto :goto_6

    .line 479
    .restart local p1    # "v":Landroid/view/View;
    :cond_a
    iget-object v1, p0, Lcwe$1;->d:Lcwe;

    invoke-static {v1}, Lcwe;->f(Lcwe;)Lcif;

    move-result-object v1

    const/16 v2, 0x3e9

    iget-object v3, p0, Lcwe$1;->c:Ldqw;

    iget-object v3, v3, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcif;->a(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 483
    :cond_b
    iget-object v1, p0, Lcwe$1;->d:Lcwe;

    invoke-static {v1}, Lcwe;->f(Lcwe;)Lcif;

    move-result-object v1

    const/16 v2, 0x3ea

    iget-object v3, p0, Lcwe$1;->c:Ldqw;

    iget-object v3, v3, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcif;->a(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 485
    :cond_c
    iget-object v1, p0, Lcwe$1;->d:Lcwe;

    invoke-static {v1}, Lcwe;->g(Lcwe;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 486
    iget-object v1, p0, Lcwe$1;->c:Ldqw;

    iget-object v1, v1, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    .line 487
    .local v0, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v1, p0, Lcwe$1;->b:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 488
    iget-object v1, p0, Lcwe$1;->b:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcwe$1;->d:Lcwe;

    invoke-static {v2}, Lcwe;->g(Lcwe;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->addChooseObject(Ljava/lang/Object;)Z

    move-result v2

    .line 490
    :cond_d
    :goto_7
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_3

    :cond_e
    iget-object v1, p0, Lcwe$1;->b:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcwe$1;->d:Lcwe;

    invoke-static {v4}, Lcwe;->g(Lcwe;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->removeChooseObject(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move v2, v3

    goto :goto_7
.end method
