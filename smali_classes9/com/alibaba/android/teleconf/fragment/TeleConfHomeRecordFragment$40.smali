.class final Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$40;
.super Ljava/lang/Object;
.source "TeleConfHomeRecordFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 605
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$40;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/16 v3, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 609
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "phone_meeting_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$40;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->d(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$40;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->b(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$40;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->d(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$40;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .line 613
    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->b(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 614
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->h()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Hide the pad"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$40;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->b(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 616
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$40;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 617
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$40;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v0, v6}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Z)V

    .line 618
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$40;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->d(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$40;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->d(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->setVisibility(I)V

    .line 623
    :cond_0
    invoke-static {}, Lewn;->a()Lewn;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$40;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$40;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->j(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)I

    move-result v3

    sget-object v0, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->CALL_LOG:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    .line 2071
    if-nez v2, :cond_1

    .line 2072
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lewn;->a:Ljava/lang/String;

    const-string/jumbo v2, "activity is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2077
    :goto_0
    return-void

    .line 2075
    :cond_1
    iget-boolean v4, v1, Lewn;->c:Z

    if-eqz v4, :cond_2

    .line 2076
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lewn;->a:Ljava/lang/String;

    const-string/jumbo v2, "mIsStarted is true"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2079
    :cond_2
    iput-boolean v7, v1, Lewn;->c:Z

    .line 2673
    invoke-virtual {v1, v2, v5, v5}, Lewn;->a(Landroid/app/Activity;Lewj$b;Ljava/lang/String;)V

    .line 2081
    if-nez v0, :cond_3

    .line 2082
    sget-object v0, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->UNKNOWN:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    .line 2084
    :cond_3
    invoke-static {}, Lewx;->e()Z

    move-result v4

    .line 2085
    if-eqz v4, :cond_5

    .line 2088
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2089
    const-string/jumbo v5, "type"

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->valueOf()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2090
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v5, "phone_calllist_click"

    invoke-interface {v0, v5, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 2092
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2094
    new-instance v4, Lewn$9;

    invoke-direct {v4, v1, v2, v3}, Lewn$9;-><init>(Lewn;Landroid/app/Activity;I)V

    invoke-static {v4}, Lewj;->d(Landroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    move-result-object v4

    .line 2104
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2106
    invoke-static {}, Lewh;->a()Lewh;

    invoke-static {}, Lewh;->o()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2107
    new-instance v4, Lewn$10;

    invoke-direct {v4, v1, v2, v3}, Lewn$10;-><init>(Lewn;Landroid/app/Activity;I)V

    invoke-static {v4, v6, v7}, Lewj;->a(Landroid/content/DialogInterface$OnClickListener;ZZ)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    move-result-object v4

    .line 2116
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2119
    :cond_4
    new-instance v4, Lewn$12;

    invoke-direct {v4, v1, v2, v3}, Lewn$12;-><init>(Lewn;Landroid/app/Activity;I)V

    invoke-static {v4}, Lewj;->e(Landroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    move-result-object v2

    .line 2128
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2130
    iget-object v2, v1, Lewn;->b:Lewj;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Leuj$l;->dt_conference_callcenter_startconference:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v7}, Lewj;->a(Ljava/lang/String;Ljava/util/List;Z)V

    .line 2135
    :goto_1
    iput-boolean v6, v1, Lewn;->c:Z

    goto/16 :goto_0

    .line 2132
    :cond_5
    const-string/jumbo v0, "CONF_RECORD_ACTIVITY_CREATE_CALL"

    sget v4, Leuj$l;->dt_conference_make_call:I

    invoke-static {v2, v3, v0, v4}, Lewn;->a(Landroid/app/Activity;ILjava/lang/String;I)V

    goto :goto_1
.end method
