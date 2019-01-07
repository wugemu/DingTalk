.class final Lcom/alibaba/android/search/fragment/GlobalSearchFragment$15;
.super Ljava/lang/Object;
.source "GlobalSearchFragment.java"

# interfaces
.implements Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 529
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$15;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    iput-object p2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$15;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 534
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$15;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->b(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerk$a;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$15;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    move-result-object v2

    if-nez v2, :cond_1

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    new-instance v1, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;-><init>()V

    .line 538
    .local v1, "model":Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$15;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;->getFilterUsers()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->setUids(Ljava/util/List;)V

    .line 539
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$15;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;->getFilterConversations()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->setCids(Ljava/util/List;)V

    .line 540
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$15;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;->getFilterTimeSpan()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->setFromTime(J)V

    .line 543
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->s()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$15;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;->getSelectedMenuName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 544
    invoke-static {}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->g()Lcom/alibaba/android/search/SearchGroupType;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/search/SearchGroupType;->MSG:Lcom/alibaba/android/search/SearchGroupType;

    if-ne v2, v3, :cond_2

    .line 545
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 546
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "MsgNarrowModel"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 547
    const-string/jumbo v2, "NAVIGATOR"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$15;->a:Landroid/app/Activity;

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v2

    const-string/jumbo v3, "https://qr.dingtalk.com/search/search_global_new.html"

    new-instance v4, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$15$1;

    invoke-direct {v4, p0, v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$15$1;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment$15;Landroid/os/Bundle;)V

    invoke-interface {v2, v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 560
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$15;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2, v1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 565
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$15;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    move-result-object v2

    if-nez v2, :cond_0

    .line 578
    :goto_0
    return-void

    .line 569
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$15;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;->getFilterUsers()Ljava/util/List;

    move-result-object v1

    .line 570
    .local v1, "filterUsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$15;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;->getFilterConversations()Ljava/util/List;

    move-result-object v0

    .line 571
    .local v0, "filterConversations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    if-eqz v0, :cond_2

    .line 572
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$15;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .line 573
    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;->getFilterTimeSpan()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$15;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    iget-object v2, v2, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 574
    sget v2, Lemt$g;->dt_search_narrow_lack_conditions:I

    invoke-static {v2}, Lcms;->a(I)V

    goto :goto_0

    .line 576
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$15;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;->a()V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 588
    const-string/jumbo v0, "pref_key_first_show_msg_narrow_guide"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 589
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$15;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->d(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$15;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->d(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$15;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->d(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setVisibility(I)V

    .line 592
    :cond_0
    return-void
.end method
