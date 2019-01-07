.class final Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;
.super Ljava/lang/Object;
.source "SessionFragmentImplV2.java"

# interfaces
.implements Ldyy$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->u(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)V

    .line 737
    return-void
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->a(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcxe;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->a(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcxe;

    move-result-object v0

    invoke-virtual {v0}, Lcxe;->notifyDataSetChanged()V

    .line 412
    :cond_0
    return-void
.end method

.method public final a(F)V
    .locals 7
    .param p1, "hour"    # F

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 678
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v1, p1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->a(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;F)F

    .line 679
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->r(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    move-result-object v1

    if-nez v1, :cond_0

    .line 693
    :goto_0
    return-void

    .line 683
    :cond_0
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_1

    .line 684
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->r(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    sget v3, Lctk$i;->dt_im_pull_down_fold_chats_immediately:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;->a:Ljava/lang/String;

    .line 685
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->r(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    sget v3, Lctk$i;->dt_im_release_up_fold_chats_immediately:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;->b:Ljava/lang/String;

    .line 686
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->r(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    sget v3, Lctk$i;->dt_im_release_up_fold_chats_immediately:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;->c:Ljava/lang/String;

    goto :goto_0

    .line 688
    :cond_1
    invoke-static {p1}, Ldza;->a(F)Ljava/lang/String;

    move-result-object v0

    .line 689
    .local v0, "hourDesc":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->r(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    sget v3, Lctk$i;->dt_im_pull_down_fold_chats_after_AT:I

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;->a:Ljava/lang/String;

    .line 690
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->r(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    sget v3, Lctk$i;->dt_im_release_up_fold_chats_after_AT:I

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;->b:Ljava/lang/String;

    .line 691
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->r(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    sget v3, Lctk$i;->dt_im_release_up_fold_chats_after_AT:I

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(I)V
    .locals 3
    .param p1, "totalUnread"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 440
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p1}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;III)V

    .line 441
    return-void
.end method

.method public final a(IF)V
    .locals 8
    .param p1, "count"    # I
    .param p2, "hour"    # F

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 634
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->q(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 635
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->r(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 636
    if-gtz p1, :cond_5

    .line 637
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_4

    .line 638
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->r(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    sget v2, Lctk$i;->dt_im_release_up_fold_chats_immediately:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;->d:Ljava/lang/String;

    .line 645
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->q(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->r(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;->setHeaderTextContent(Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;)V

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->q(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;

    move-result-object v0

    .line 8074
    iget-object v1, v0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;->a:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;

    .line 8193
    iget-object v2, v1, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->b:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_1

    .line 8194
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->b:Landroid/animation/ValueAnimator;

    .line 8195
    iget-object v2, v1, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->b:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8196
    iget-object v2, v1, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 8197
    iget-object v2, v1, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->b:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header$1;

    invoke-direct {v3, v1}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header$1;-><init>(Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8224
    iget-object v2, v1, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 8226
    :cond_1
    iget-object v2, v1, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->c:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->c:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 8227
    iget-object v2, v1, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->c:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;->d:Ljava/lang/String;

    iget-object v3, v1, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 8228
    iget-object v2, v1, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->a:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->c:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;->d:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8075
    :cond_2
    :goto_1
    iget-object v1, v0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 649
    :cond_3
    return-void

    .line 640
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->r(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    sget v2, Lctk$i;->dt_im_release_up_fold_chats_after_AT:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ldza;->a(F)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;->d:Ljava/lang/String;

    goto/16 :goto_0

    .line 643
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->r(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    sget v2, Lctk$i;->dt_im_effective_mode_close_count_read_conversation_AT:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;->d:Ljava/lang/String;

    goto/16 :goto_0

    .line 8231
    :cond_6
    iget-object v1, v1, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->a:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 8194
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 539
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->o(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 540
    new-instance v0, Leai;

    invoke-direct {v0, p1}, Leai;-><init>(Landroid/os/Bundle;)V

    .line 541
    .local v0, "audioObject":Leai;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->d(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Ldze;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalkim/session/header/Header;->BACKGROUND_AUDIO:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v1, v2, v0}, Ldze;->a(Lcom/alibaba/android/dingtalkim/session/header/Header;Ljava/lang/Object;)V

    .line 543
    .end local v0    # "audioObject":Leai;
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 12
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 373
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->a(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcxe;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 374
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->a(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcxe;

    move-result-object v6

    .line 1188
    invoke-virtual {v6}, Lcxe;->d()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1191
    invoke-virtual {v6}, Lcxe;->d()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {v6}, Lcxe;->d()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, v0, v1

    .line 1192
    invoke-virtual {v6}, Lcxe;->d()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {v6}, Lcxe;->d()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1193
    if-gez v1, :cond_0

    move v1, v3

    .line 1194
    :cond_0
    if-gez v0, :cond_8

    move v2, v3

    .line 1195
    :goto_0
    invoke-virtual {v6}, Lcxe;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v6}, Lcxe;->getCount()I

    move-result v0

    if-lt v2, v0, :cond_2

    .line 1196
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v5, v1

    move v1, v3

    .line 1199
    :goto_2
    if-gt v5, v2, :cond_7

    .line 1200
    invoke-virtual {v6, v5}, Lcxe;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 1201
    if-eqz v0, :cond_6

    .line 1204
    iget-wide v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iget-object v7, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v7}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_5

    .line 1205
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 1206
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    .line 1208
    :cond_3
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 1209
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    new-instance v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;

    invoke-direct {v7}, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;-><init>()V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1211
    :cond_4
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v7

    .line 1212
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;

    iget-object v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iput-object v8, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->mediaId:Ljava/lang/String;

    .line 1213
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;

    iget-object v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v8, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->nick:Ljava/lang/String;

    .line 1214
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;

    invoke-virtual {v7, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->name:Ljava/lang/String;

    move v1, v4

    .line 1217
    :cond_5
    iget-object v7, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v7}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 1220
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v8

    iget-wide v10, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v0, v8, v10

    if-nez v0, :cond_6

    move v1, v4

    .line 1199
    :cond_6
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    .line 1224
    :cond_7
    if-eqz v1, :cond_1

    .line 1225
    invoke-virtual {v6}, Lcxe;->notifyDataSetChanged()V

    goto/16 :goto_1

    :cond_8
    move v2, v0

    goto/16 :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 1
    .param p1, "displayConversationObject"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->a(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcxe;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->a(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcxe;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcxe;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    .line 391
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;I)V
    .locals 1
    .param p1, "dingtalkConversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .param p2, "type"    # I

    .prologue
    .line 416
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0, p1, p2}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->a(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;I)V

    .line 417
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;)V
    .locals 2
    .param p1, "taskListObject"    # Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 605
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->o(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->d(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Ldze;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkim/session/header/Header;->TASK_LIST:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v0, v1, p1}, Ldze;->a(Lcom/alibaba/android/dingtalkim/session/header/Header;Ljava/lang/Object;)V

    .line 607
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->b(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Z)Z

    .line 609
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;)V
    .locals 2
    .param p1, "taskObject"    # Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 590
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->o(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->d(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Ldze;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkim/session/header/Header;->TASK:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v0, v1, p1}, Ldze;->a(Lcom/alibaba/android/dingtalkim/session/header/Header;Ljava/lang/Object;)V

    .line 593
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6
    .param p1, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 402
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->a(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcxe;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->a(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcxe;

    move-result-object v3

    .line 3230
    invoke-virtual {v3}, Lcxe;->d()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3233
    invoke-virtual {v3}, Lcxe;->d()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {v3}, Lcxe;->d()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v0, v2

    .line 3234
    invoke-virtual {v3}, Lcxe;->d()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    invoke-virtual {v3}, Lcxe;->d()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    sub-int v4, v2, v4

    .line 3235
    if-ltz v4, :cond_0

    invoke-virtual {v3}, Lcxe;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v3}, Lcxe;->getCount()I

    move-result v2

    if-lt v4, v2, :cond_1

    .line 3236
    :cond_0
    :goto_0
    return-void

    .line 3238
    :cond_1
    if-gez v0, :cond_2

    move v0, v1

    :cond_2
    move v2, v0

    .line 3242
    :goto_1
    if-gt v2, v4, :cond_3

    .line 3243
    invoke-virtual {v3, v2}, Lcxe;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 3244
    if-eqz v0, :cond_4

    .line 3247
    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3248
    const/4 v0, 0x1

    .line 3242
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 3251
    :cond_3
    if-eqz v1, :cond_0

    .line 3252
    invoke-virtual {v3}, Lcxe;->notifyDataSetChanged()V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 4
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "localId"    # J

    .prologue
    .line 573
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->d(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Ldze;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dingtalkim/session/header/Header;->CMAIL:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v2, v3}, Ldze;->a(Lcom/alibaba/android/dingtalkim/session/header/Header;)Ldzl;

    move-result-object v0

    .line 574
    .local v0, "holder":Ldzl;
    if-eqz v0, :cond_0

    .line 5051
    iget-object v2, v0, Ldzl;->d:Ljava/lang/Object;

    .line 574
    instance-of v2, v2, Leaj;

    if-eqz v2, :cond_0

    .line 6051
    iget-object v1, v0, Ldzl;->d:Ljava/lang/Object;

    .line 575
    check-cast v1, Leaj;

    .line 576
    .local v1, "object":Leaj;
    iget-object v2, v1, Leaj;->d:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, v1, Leaj;->b:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_0

    .line 577
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->d(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Ldze;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dingtalkim/session/header/Header;->CMAIL:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v2, v3}, Ldze;->b(Lcom/alibaba/android/dingtalkim/session/header/Header;)V

    .line 580
    .end local v1    # "object":Leaj;
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "intentFlag"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 557
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->o(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 558
    new-instance v0, Leak;

    invoke-direct {v0, p2, p1, p3}, Leak;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 559
    .local v0, "object":Leak;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->d(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Ldze;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalkim/session/header/Header;->MICRO_APP:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v1, v2, v0}, Ldze;->a(Lcom/alibaba/android/dingtalkim/session/header/Header;Ljava/lang/Object;)V

    .line 561
    .end local v0    # "object":Leak;
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 7
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "localId"    # J
    .param p5, "opType"    # I

    .prologue
    .line 565
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->o(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 566
    new-instance v0, Leaj;

    move v1, p5

    move-wide v2, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Leaj;-><init>(IJLjava/lang/String;Ljava/lang/String;)V

    .line 567
    .local v0, "object":Leaj;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->d(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Ldze;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalkim/session/header/Header;->CMAIL:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v1, v2, v0}, Ldze;->a(Lcom/alibaba/android/dingtalkim/session/header/Header;Ljava/lang/Object;)V

    .line 569
    .end local v0    # "object":Leaj;
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "isEnterprise"    # Z

    .prologue
    .line 380
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->a(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcxe;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->a(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcxe;

    invoke-static {}, Lcxe;->e()V

    .line 383
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "dataLoaded"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 445
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->e(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Ldjk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->e(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Ldjk;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Ldjk;->a(ZZ)V

    .line 448
    :cond_0
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 741
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 731
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    sget v1, Lctk$i;->conversation_list_loading:I

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->a(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;I)V

    .line 732
    return-void
.end method

.method public final b(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 3
    .param p1, "displayConversationObject"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 395
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->a(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcxe;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 396
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->a(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcxe;

    move-result-object v0

    .line 2156
    iget-object v0, v0, Lcxe;->g:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcxg;

    .line 2157
    if-eqz v0, :cond_0

    .line 2506
    iget-object v1, v0, Lcxg;->m:Ljava/lang/String;

    .line 2157
    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2158
    invoke-virtual {v0, p1}, Lcxg;->g(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    .line 398
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 622
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->o(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->d(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Ldze;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkim/session/header/Header;->RECORD:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v0, v1, p1}, Ldze;->a(Lcom/alibaba/android/dingtalkim/session/header/Header;Ljava/lang/Object;)V

    .line 625
    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 3
    .param p1, "dataReady"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 452
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->a(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Z)Z

    .line 453
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->f(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcjo$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 454
    new-instance v0, Lcjo$b;

    invoke-direct {v0}, Lcjo$b;-><init>()V

    .line 455
    .local v0, "messageEvent":Lcjo$b;
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcjo$b;->a:Ljava/lang/Object;

    .line 456
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->f(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcjo$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcjo$a;->a(Lcjo$b;)V

    .line 458
    .end local v0    # "messageEvent":Lcjo$b;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->g(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->h(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 459
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->h(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setSelectionAfterHeaderView()V

    .line 461
    :cond_1
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->a(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcxe;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->a(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcxe;

    invoke-static {}, Lcxe;->a()V

    .line 669
    :cond_0
    return-void
.end method

.method public final c(Z)V
    .locals 3
    .param p1, "hasAtMe"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 477
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->d(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Ldze;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalkim/session/header/Header;->AT_ME:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v1, v2}, Ldze;->a(Lcom/alibaba/android/dingtalkim/session/header/Header;)Ldzl;

    move-result-object v0

    .line 478
    .local v0, "holder":Ldzl;
    if-eqz v0, :cond_0

    .line 479
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldzl;->a(Ljava/lang/Object;)V

    .line 481
    :cond_0
    return-void
.end method

.method public final d(Z)V
    .locals 2
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 485
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->i(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->i(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Landroid/widget/RelativeLayout;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 488
    :cond_0
    return-void

    .line 486
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->b(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)V

    .line 422
    return-void
.end method

.method public final e(Z)V
    .locals 3
    .param p1, "visibility"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 492
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->b:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->d:Z

    if-nez v1, :cond_0

    .line 500
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->j(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    if-eqz v1, :cond_0

    .line 501
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->j(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 502
    .local v0, "emptyView":Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->k(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyImageResource(I)V

    .line 503
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->l(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 506
    .end local v0    # "emptyView":Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->j(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Landroid/view/View;

    move-result-object v2

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 507
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->m(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Ldbz;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 508
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->m(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Ldbz;

    move-result-object v1

    invoke-interface {v1}, Ldbz;->a()V

    .line 511
    :cond_1
    return-void

    .line 506
    :cond_2
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->c(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)V

    .line 427
    return-void
.end method

.method public final f(Z)V
    .locals 2
    .param p1, "open"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 658
    const-string/jumbo v0, "pref_key_efficient_intro_show"

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 659
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->a(Z)V

    .line 660
    return-void
.end method

.method public final g()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 431
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->d(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Ldze;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalkim/session/header/Header;->DEVICE_STATUS:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v1, v2}, Ldze;->a(Lcom/alibaba/android/dingtalkim/session/header/Header;)Ldzl;

    move-result-object v0

    .line 432
    .local v0, "holder":Ldzl;
    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {v0}, Ldzl;->c()V

    .line 435
    :cond_0
    return-void
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->d:Z

    if-nez v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->d()Z

    .line 473
    :cond_0
    return-void
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->n(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)V

    .line 516
    return-void
.end method

.method public final j()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 520
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->o(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->d(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Ldze;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkim/session/header/Header;->SESSION_RETRY:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v0, v1}, Ldze;->c(Lcom/alibaba/android/dingtalkim/session/header/Header;)V

    .line 535
    :cond_0
    return-void
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->b:Z

    if-nez v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->p(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)V

    .line 587
    :cond_0
    return-void
.end method

.method public final l()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 597
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->d(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Ldze;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalkim/session/header/Header;->TASK:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v1, v2}, Ldze;->a(Lcom/alibaba/android/dingtalkim/session/header/Header;)Ldzl;

    move-result-object v0

    .line 598
    .local v0, "holder":Ldzl;
    if-eqz v0, :cond_0

    .line 7051
    iget-object v1, v0, Ldzl;->d:Ljava/lang/Object;

    .line 598
    instance-of v1, v1, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;

    if-eqz v1, :cond_0

    .line 599
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->d(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Ldze;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalkim/session/header/Header;->TASK:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v1, v2}, Ldze;->b(Lcom/alibaba/android/dingtalkim/session/header/Header;)V

    .line 601
    :cond_0
    return-void
.end method

.method public final m()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 613
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->d(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Ldze;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalkim/session/header/Header;->TASK_LIST:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v1, v2}, Ldze;->a(Lcom/alibaba/android/dingtalkim/session/header/Header;)Ldzl;

    move-result-object v0

    .line 614
    .local v0, "holder":Ldzl;
    if-eqz v0, :cond_0

    .line 8051
    iget-object v1, v0, Ldzl;->d:Ljava/lang/Object;

    .line 614
    instance-of v1, v1, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;

    if-eqz v1, :cond_0

    .line 615
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->d(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Ldze;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalkim/session/header/Header;->TASK_LIST:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v1, v2}, Ldze;->b(Lcom/alibaba/android/dingtalkim/session/header/Header;)V

    .line 616
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->b(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Z)Z

    .line 618
    :cond_0
    return-void
.end method

.method public final n()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 629
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->d(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Ldze;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkim/session/header/Header;->RECORD:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v0, v1}, Ldze;->b(Lcom/alibaba/android/dingtalkim/session/header/Header;)V

    .line 630
    return-void
.end method

.method public final o()V
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->g()V

    .line 654
    return-void
.end method

.method public final p()Ldze;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->d(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Ldze;

    move-result-object v0

    return-object v0
.end method

.method public final q()V
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->s(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)V

    .line 698
    return-void
.end method

.method public final r()V
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->t(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)V

    .line 703
    return-void
.end method

.method public final s()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 708
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->o(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 717
    :goto_0
    return-void

    .line 712
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 713
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->d(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Ldze;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkim/session/header/Header;->SPACE_SYNC_DRIVE_GUIDE:Lcom/alibaba/android/dingtalkim/session/header/Header;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ldze;->a(Lcom/alibaba/android/dingtalkim/session/header/Header;Ljava/lang/Object;)V

    goto :goto_0

    .line 715
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->t()V

    goto :goto_0
.end method

.method public final synthetic setPresenter(Lcjd;)V
    .locals 1

    .prologue
    .line 370
    check-cast p1, Ldyy$a;

    .line 8726
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->a(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Ldyy$a;)Ldyy$a;

    .line 370
    return-void
.end method

.method public final t()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 721
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->d(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Ldze;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkim/session/header/Header;->SPACE_SYNC_DRIVE_GUIDE:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v0, v1}, Ldze;->b(Lcom/alibaba/android/dingtalkim/session/header/Header;)V

    .line 722
    return-void
.end method

.method public final u()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 547
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->d(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Ldze;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkim/session/header/Header;->BACKGROUND_AUDIO:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v0, v1}, Ldze;->b(Lcom/alibaba/android/dingtalkim/session/header/Header;)V

    .line 548
    return-void
.end method

.method public final v()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 552
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    .line 4114
    iget-wide v0, v0, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->h:J

    .line 552
    return-wide v0
.end method
