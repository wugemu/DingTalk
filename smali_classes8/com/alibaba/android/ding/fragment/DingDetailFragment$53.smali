.class final Lcom/alibaba/android/ding/fragment/DingDetailFragment$53;
.super Ljava/lang/Object;
.source "DingDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/fragment/DingDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 671
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$53;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 674
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$53;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    invoke-static {v0}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 675
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$53;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->g(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    move-result-object v0

    .line 1106
    iget-object v0, v0, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 676
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$53;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$53;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    invoke-static {v0}, Lbkh;->d(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$53;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ak()I

    move-result v0

    if-lez v0, :cond_0

    const-string/jumbo v0, "pref_key_task_urge_tips"

    const/4 v1, 0x1

    .line 677
    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    const-string/jumbo v0, "pref_key_task_urge_tips"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$53;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$53;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v1

    .line 1641
    if-eqz v0, :cond_1

    .line 1644
    if-eqz v1, :cond_1

    .line 1647
    invoke-static {v0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v2, "https://qr.dingtalk.com/ding/complete_detail"

    new-instance v3, Lbjv$6;

    invoke-direct {v3, v1}, Lbjv$6;-><init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    invoke-interface {v0, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 686
    :cond_1
    :goto_0
    return-void

    .line 681
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$53;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    invoke-static {v0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 682
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$53;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$53;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v1

    .line 1660
    if-eqz v0, :cond_1

    .line 1663
    if-eqz v1, :cond_1

    .line 1666
    invoke-static {v0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v2, "https://qr.dingtalk.com/ding/meeting_detail_list"

    new-instance v3, Lbjv$7;

    invoke-direct {v3, v1}, Lbjv$7;-><init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    invoke-interface {v0, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 684
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$53;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$53;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v1

    .line 2618
    if-eqz v0, :cond_1

    .line 2621
    if-eqz v1, :cond_1

    .line 2624
    invoke-static {v0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v2, "https://qr.dingtalk.com/ding/confirm_detail"

    new-instance v3, Lbjv$5;

    invoke-direct {v3, v1}, Lbjv$5;-><init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    invoke-interface {v0, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 2637
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v0

    .line 3262
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3263
    const-string/jumbo v2, "ding_id"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3264
    const-string/jumbo v0, "ding_detail_recipient_click"

    invoke-static {v0, v1}, Lbjz;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
