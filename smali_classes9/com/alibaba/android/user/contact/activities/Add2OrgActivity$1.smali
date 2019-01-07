.class final Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;
.super Ljava/lang/Object;
.source "Add2OrgActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->a(Landroid/widget/LinearLayout;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

.field final synthetic b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    .prologue
    .line 446
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->a:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 449
    sget-object v1, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$6;->a:[I

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->a:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 563
    :goto_0
    return-void

    .line 451
    :pswitch_0
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->a(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v6}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 454
    :pswitch_1
    const-string/jumbo v2, "invite_new_members_by_dingtalk"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v8}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v3, "source"

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->b(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    .line 1315
    invoke-static {v6, v2, v1, v3}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 455
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->e(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->c(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->d(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->doShare(Landroid/content/Context;Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V

    goto :goto_0

    .line 458
    :pswitch_2
    const-string/jumbo v2, "invite_new_members_by_wechat"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v8}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v3, "source"

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->b(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    .line 2315
    invoke-static {v6, v2, v1, v3}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 459
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->g(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->f(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;->isSupportShare(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 461
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->h(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->e(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->g(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->i(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->doShare(Landroid/content/Context;Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V

    goto/16 :goto_0

    .line 464
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->e(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->g(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->d(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->doShare(Landroid/content/Context;Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V

    goto/16 :goto_0

    .line 467
    :cond_1
    sget v1, Lezg$l;->dt_share_app_not_installed:I

    invoke-static {v1}, Lcms;->a(I)V

    goto/16 :goto_0

    .line 471
    :pswitch_3
    const-string/jumbo v2, "invite_new_members_by_qq"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v8}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v3, "source"

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->b(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    .line 3315
    invoke-static {v6, v2, v1, v3}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->j(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->f(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;->isSupportShare(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 473
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->e(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->j(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->d(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->doShare(Landroid/content/Context;Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V

    goto/16 :goto_0

    .line 475
    :cond_2
    sget v1, Lezg$l;->dt_share_app_not_installed:I

    invoke-static {v1}, Lcms;->a(I)V

    goto/16 :goto_0

    .line 479
    :pswitch_4
    const-string/jumbo v2, "invite_new_members_by_whatsapp"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v8}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v3, "source"

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->b(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    .line 4315
    invoke-static {v6, v2, v1, v3}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 480
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->k(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->f(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;->isSupportShare(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 481
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->e(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->k(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->d(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->doShare(Landroid/content/Context;Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V

    goto/16 :goto_0

    .line 483
    :cond_3
    sget v1, Lezg$l;->dt_share_app_not_installed:I

    invoke-static {v1}, Lcms;->a(I)V

    goto/16 :goto_0

    .line 487
    :pswitch_5
    const-string/jumbo v2, "invite_new_members_by_facebook"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v8}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v3, "source"

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->b(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    .line 5315
    invoke-static {v6, v2, v1, v3}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 488
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->l(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->f(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;->isSupportShare(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 489
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->e(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->l(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->d(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->doShare(Landroid/content/Context;Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V

    goto/16 :goto_0

    .line 491
    :cond_4
    sget v1, Lezg$l;->dt_share_app_not_installed:I

    invoke-static {v1}, Lcms;->a(I)V

    goto/16 :goto_0

    .line 495
    :pswitch_6
    const-string/jumbo v2, "invite_new_members_by_system"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v8}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v3, "source"

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->b(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    .line 6315
    invoke-static {v6, v2, v1, v3}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 496
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->e(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->m(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->d(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->doShare(Landroid/content/Context;Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V

    goto/16 :goto_0

    .line 499
    :pswitch_7
    const-string/jumbo v2, "invite_new_members_by_sms"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v8}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v3, "source"

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->b(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    .line 7315
    invoke-static {v6, v2, v1, v3}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 500
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->e(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->n(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->d(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->doShare(Landroid/content/Context;Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V

    goto/16 :goto_0

    .line 505
    :pswitch_8
    const-string/jumbo v2, "invite_new_members_by_phone_contacts"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v8}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v3, "source"

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->b(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    .line 8315
    invoke-static {v6, v2, v1, v3}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 507
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->o(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)V

    goto/16 :goto_0

    .line 510
    :pswitch_9
    const-string/jumbo v2, "invite_new_members_by_add_manually"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v8}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v3, "source"

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->b(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    .line 9315
    invoke-static {v6, v2, v1, v3}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 511
    new-instance v1, Lfjk;

    invoke-direct {v1}, Lfjk;-><init>()V

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->p(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->q(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->r(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lfjk;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;JLjava/lang/String;)V

    goto/16 :goto_0

    .line 514
    :pswitch_a
    const-string/jumbo v2, "invite_new_members_to_fill_register_form"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v8}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v3, "source"

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->b(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    .line 10315
    invoke-static {v6, v2, v1, v3}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 515
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->s(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/android/user/model/SWHrmObject;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->s(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/android/user/model/SWHrmObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/user/model/SWHrmObject;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 516
    :cond_5
    sget v1, Lezg$l;->server_down:I

    invoke-static {v1}, Lcms;->a(I)V

    goto/16 :goto_0

    .line 518
    :cond_6
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->s(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Lcom/alibaba/android/user/model/SWHrmObject;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/android/user/model/SWHrmObject;->mUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v6}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 522
    :pswitch_b
    const-string/jumbo v2, "invite_new_members_by_qr_code"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v8}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v3, "source"

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->b(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    .line 11315
    invoke-static {v6, v2, v1, v3}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 524
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/org_invite_qrcode.html"

    new-instance v3, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1$1;-><init>(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;)V

    .line 525
    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_0

    .line 541
    :pswitch_c
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->u(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 543
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->u(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 553
    .local v7, "encodeName":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    const-string/jumbo v3, "https://h5.dingtalk.com/h5-join-team/guideJoin.html?corpName=%s&corpCode=%s#/idUse"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v7, v4, v5

    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->v(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v6}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 544
    .end local v7    # "encodeName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 545
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v1, "Add2OrgActivity"

    const-string/jumbo v2, "url encode error"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 546
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->u(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Ljava/lang/String;

    move-result-object v7

    .line 547
    .restart local v7    # "encodeName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 550
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v7    # "encodeName":Ljava/lang/String;
    :cond_7
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->r(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "encodeName":Ljava/lang/String;
    goto :goto_1

    .line 556
    .end local v7    # "encodeName":Ljava/lang/String;
    :pswitch_d
    const-string/jumbo v2, "invite_new_members_by_batch_add"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v8}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v3, "source"

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->b(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    .line 12315
    invoke-static {v6, v2, v1, v3}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 559
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$1;->b:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    const-string/jumbo v3, "https://csmobile.alipay.com/detailSolution.htm?knowledgeType=1&scene=dd_qygl&questionId=201602038100&showmenu=false&dd_share=false"

    invoke-virtual {v1, v2, v3, v6}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 449
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
