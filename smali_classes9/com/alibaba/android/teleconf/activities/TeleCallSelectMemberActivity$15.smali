.class final Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$15;
.super Ljava/lang/Object;
.source "TeleCallSelectMemberActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    .prologue
    .line 491
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$15;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 494
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$15;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v7}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->o(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Leum;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$15;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v7}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->o(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Leum;

    move-result-object v7

    invoke-virtual {v7}, Leum;->getCount()I

    move-result v7

    if-gtz v7, :cond_1

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$15;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v7}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->o(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Leum;

    move-result-object v7

    invoke-virtual {v7, p3}, Leum;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    .line 498
    .local v5, "userObject":Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
    if-eqz v5, :cond_0

    .line 499
    sget-object v7, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->ExtraTailType:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    iget-object v8, v5, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->b:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    if-ne v7, v8, :cond_3

    .line 500
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v7

    const-string/jumbo v8, "phone_launch_deletemember_click"

    invoke-interface {v7, v8}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 501
    iget-boolean v0, v5, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->c:Z

    .line 502
    .local v0, "deleteState":Z
    if-eqz v0, :cond_2

    .line 503
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$15;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v7}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->o(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Leum;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 504
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$15;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v7}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->o(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Leum;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Leum;->d(Z)V

    goto :goto_0

    .line 507
    :cond_2
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$15;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v7}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->o(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Leum;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 508
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$15;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v7}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->o(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Leum;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Leum;->c(Z)V

    goto :goto_0

    .line 511
    .end local v0    # "deleteState":Z
    :cond_3
    sget-object v7, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->TailType:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    iget-object v8, v5, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->b:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    if-ne v7, v8, :cond_6

    .line 512
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v7

    const-string/jumbo v8, "phone_launch_addmember_click"

    invoke-interface {v7, v8}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 514
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$15;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v7}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->o(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Leum;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 515
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$15;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v7}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->o(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Leum;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Leum;->d(Z)V

    .line 517
    :cond_4
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$15;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v7}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->p(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$15;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v7}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->p(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_5

    .line 518
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$15;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v7}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->p(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 521
    :cond_5
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$15;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    iget-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$15;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v8}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)I

    move-result v8

    .line 522
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v9

    invoke-virtual {v9}, Lcid;->c()Landroid/app/Application;

    move-result-object v9

    sget v10, Leuj$l;->and_act_create_calling:I

    invoke-virtual {v9, v10}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Leuj$l;->conference_choose_limit:I

    const/4 v11, 0x0

    .line 521
    invoke-static {v7, v8, v9, v10, v11}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;ILjava/lang/String;ILjava/lang/String;)V

    .line 525
    const-string/jumbo v7, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "Add member on preview panel."

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 527
    :cond_6
    iget-object v1, v5, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 528
    .local v1, "identityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v1, :cond_0

    .line 529
    iget-boolean v7, v5, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->c:Z

    if-eqz v7, :cond_9

    .line 530
    iget-wide v8, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v7

    invoke-virtual {v7}, Lccr;->c()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_7

    .line 532
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    sget v8, Leuj$l;->conf_txt_video_delete_self_tip:I

    invoke-virtual {v7, v8}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 533
    .local v4, "toast":Ljava/lang/String;
    invoke-static {v4}, Lcms;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 536
    .end local v4    # "toast":Ljava/lang/String;
    :cond_7
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$15;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v7}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 537
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$15;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    iget-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$15;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v8}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/util/List;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/util/List;)V

    .line 538
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$15;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v7}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_8

    const/4 v2, 0x1

    .line 539
    .local v2, "isRefresh":Z
    :goto_1
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$15;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    iget-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$15;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v8}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/util/List;

    move-result-object v8

    invoke-static {v7, v8, v2}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/util/List;Z)V

    .line 541
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$15;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    iget-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$15;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v8}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/util/List;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/util/List;)V

    goto/16 :goto_0

    .line 538
    .end local v2    # "isRefresh":Z
    :cond_8
    const/4 v2, 0x0

    goto :goto_1

    .line 543
    :cond_9
    iget-boolean v7, v5, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->g:Z

    if-eqz v7, :cond_0

    .line 545
    iget-object v7, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 546
    .local v3, "nick":Ljava/lang/String;
    :goto_2
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$15;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    sget v8, Leuj$l;->dt_conf_callselect_lowver_invite_msg:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 547
    .local v6, "verMsg":Ljava/lang/String;
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$15;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    iget-wide v8, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v6, v10}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;JLjava/lang/String;Z)V

    goto/16 :goto_0

    .line 545
    .end local v3    # "nick":Ljava/lang/String;
    .end local v6    # "verMsg":Ljava/lang/String;
    :cond_a
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    goto :goto_2
.end method
