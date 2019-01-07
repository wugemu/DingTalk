.class public Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "DingCompleteDetailActivity.java"


# instance fields
.field private a:Lcom/alibaba/android/ding/widget/ScrollableViewPager;

.field private b:Landroid/view/ViewGroup;

.field private c:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Ljava/lang/String;

.field private g:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field private h:Lbjg;

.field private i:Z

.field private j:Z

.field private k:Layo;

.field private l:I

.field private m:I

.field private n:Landroid/support/v4/view/ViewPager$d;

.field private o:Lckm$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm$a",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lckm$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm$a",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/alibaba/android/ding/utils/PageDisplayMode;

.field private r:Landroid/animation/ObjectAnimator;

.field private s:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 76
    sget-object v0, Lcom/alibaba/android/ding/utils/PageDisplayMode;->NO_SELECT:Lcom/alibaba/android/ding/utils/PageDisplayMode;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->q:Lcom/alibaba/android/ding/utils/PageDisplayMode;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->m:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)Lbjg;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->h:Lbjg;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;Lcom/alibaba/android/ding/base/objects/ObjectDing;)Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;
    .param p1, "x1"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->g:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;F)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;
    .param p1, "x1"    # F

    .prologue
    .line 46
    .line 8168
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->a:Lcom/alibaba/android/ding/widget/ScrollableViewPager;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/ScrollableViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 8169
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 8170
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 8171
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v2, p1

    float-to-int v2, v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 8172
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->a:Lcom/alibaba/android/ding/widget/ScrollableViewPager;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/widget/ScrollableViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;Lcom/alibaba/android/ding/utils/PageDisplayMode;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;
    .param p1, "x1"    # Lcom/alibaba/android/ding/utils/PageDisplayMode;

    .prologue
    .line 46
    .line 8385
    if-nez p1, :cond_0

    .line 8386
    sget-object p1, Lcom/alibaba/android/ding/utils/PageDisplayMode;->NO_SELECT:Lcom/alibaba/android/ding/utils/PageDisplayMode;

    .line 8388
    .end local p1    # "x1":Lcom/alibaba/android/ding/utils/PageDisplayMode;
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->q:Lcom/alibaba/android/ding/utils/PageDisplayMode;

    if-eq p1, v0, :cond_3

    .line 8391
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->q:Lcom/alibaba/android/ding/utils/PageDisplayMode;

    .line 8392
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->q:Lcom/alibaba/android/ding/utils/PageDisplayMode;

    sget-object v1, Lcom/alibaba/android/ding/utils/PageDisplayMode;->NO_SELECT:Lcom/alibaba/android/ding/utils/PageDisplayMode;

    if-ne v0, v1, :cond_4

    .line 8393
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->a:Lcom/alibaba/android/ding/widget/ScrollableViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/ScrollableViewPager;->setScrollable(Z)V

    .line 8395
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->s:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->s:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8396
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->s:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 8398
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->r:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 8399
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->r:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 8411
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->supportInvalidateOptionsMenu()V

    .line 8413
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_3

    .line 8416
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->q:Lcom/alibaba/android/ding/utils/PageDisplayMode;

    sget-object v1, Lcom/alibaba/android/ding/utils/PageDisplayMode;->NO_SELECT:Lcom/alibaba/android/ding/utils/PageDisplayMode;

    if-ne v0, v1, :cond_6

    .line 8417
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Laxp$i;->dt_task_detail_receivers_title:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    :cond_3
    :goto_1
    return-void

    .line 8401
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->q:Lcom/alibaba/android/ding/utils/PageDisplayMode;

    sget-object v1, Lcom/alibaba/android/ding/utils/PageDisplayMode;->MULTI_SELECT:Lcom/alibaba/android/ding/utils/PageDisplayMode;

    if-ne v0, v1, :cond_2

    .line 8402
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->a:Lcom/alibaba/android/ding/widget/ScrollableViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/ScrollableViewPager;->setScrollable(Z)V

    .line 8404
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->r:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->r:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8405
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->r:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 8407
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->s:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 8408
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->s:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 8419
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Laxp$i;->dt_task_cancel_urge:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->i:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->l:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->b:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->j:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    .prologue
    const-wide/16 v8, 0x1f4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 46
    .line 8147
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->b:Landroid/view/ViewGroup;

    const-string/jumbo v1, "translationY"

    new-array v2, v7, [F

    iget v3, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->m:I

    neg-int v3, v3

    int-to-float v3, v3

    aput v3, v2, v5

    aput v4, v2, v6

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->r:Landroid/animation/ObjectAnimator;

    .line 8148
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->r:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 8149
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->r:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$3;-><init>(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8156
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->b:Landroid/view/ViewGroup;

    const-string/jumbo v1, "translationY"

    new-array v2, v7, [F

    aput v4, v2, v5

    iget v3, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->m:I

    neg-int v3, v3

    int-to-float v3, v3

    aput v3, v2, v6

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->s:Landroid/animation/ObjectAnimator;

    .line 8157
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->s:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$4;-><init>(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8164
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->s:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 46
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    .prologue
    .line 46
    iget v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->l:I

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)Layo;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->k:Layo;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->g:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    .prologue
    const/4 v4, 0x1

    .line 46
    .line 9208
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->a:Lcom/alibaba/android/ding/widget/ScrollableViewPager;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/ScrollableViewPager;->setPageMargin(I)V

    .line 9209
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->a:Lcom/alibaba/android/ding/widget/ScrollableViewPager;

    sget v1, Laxp$e;->default_divider:I

    invoke-static {p0, v1}, Ldp;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/ScrollableViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9210
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->a:Lcom/alibaba/android/ding/widget/ScrollableViewPager;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/ding/widget/ScrollableViewPager;->setOffscreenPageLimit(I)V

    .line 9211
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->k:Layo;

    if-nez v0, :cond_0

    .line 9212
    new-instance v0, Layo;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->getSupportFragmentManager()Lcn;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->f:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->i:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->j:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->g:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v1}, Lbkh;->B(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-nez v1, :cond_3

    :goto_0
    iget-object v5, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->g:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Layo;-><init>(Landroid/app/Activity;Lcn;Ljava/lang/String;ZLcom/alibaba/android/ding/base/objects/ObjectDing;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->k:Layo;

    .line 9214
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->a:Lcom/alibaba/android/ding/widget/ScrollableViewPager;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->k:Layo;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/ScrollableViewPager;->setAdapter(Lgl;)V

    .line 9215
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->a:Lcom/alibaba/android/ding/widget/ScrollableViewPager;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 9216
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->a:Lcom/alibaba/android/ding/widget/ScrollableViewPager;

    iget v1, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->l:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/ScrollableViewPager;->setCurrentItem(I)V

    .line 9217
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget v1, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->l:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setCurrentItem(I)V

    .line 9218
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->k:Layo;

    .line 10083
    iget-object v0, v0, Layo;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    .line 9219
    if-eqz v0, :cond_1

    .line 9220
    new-instance v1, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$5;-><init>(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)V

    .line 10143
    iput-object v1, v0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->a:Lbhx;

    .line 9232
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->h:Lbjg;

    if-nez v0, :cond_2

    .line 9233
    new-instance v0, Lbjg;

    const-string/jumbo v1, "identify_ding_complete_detail_activity"

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->g:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-direct {v0, p0, v1, v2}, Lbjg;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->h:Lbjg;

    .line 46
    :cond_2
    return-void

    .line 9212
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    .prologue
    .line 46
    .line 10309
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->g:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_0

    .line 10312
    new-instance v0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$8;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$8;-><init>(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->o:Lckm$a;

    .line 10322
    new-instance v0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$9;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$9;-><init>(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->p:Lckm$a;

    .line 10335
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->g:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->o:Lckm$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Q(Lckm$a;)V

    .line 10336
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->g:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->p:Lckm$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->s(Lckm$a;)V

    .line 46
    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 46
    .line 10349
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->g:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_0

    .line 10353
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->g:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ak()I

    move-result v0

    .line 10354
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->g:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->s()I

    move-result v1

    .line 10356
    if-lez v0, :cond_1

    .line 10357
    new-instance v2, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    sget v3, Laxp$i;->dt_ding_txt_uncomplete_member:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>(Ljava/lang/String;)V

    .line 10358
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->k:Layo;

    .line 11091
    iget-object v3, v3, Layo;->c:[Ljava/lang/String;

    .line 10358
    const-string/jumbo v4, "("

    invoke-virtual {v2, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    .line 10363
    :goto_0
    if-lez v1, :cond_2

    .line 10364
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    sget v2, Laxp$i;->ding_txt_complete_member:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>(Ljava/lang/String;)V

    .line 10365
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->k:Layo;

    .line 13091
    iget-object v2, v2, Layo;->c:[Ljava/lang/String;

    .line 10365
    const-string/jumbo v3, "("

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    .line 10370
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->k:Layo;

    .line 15091
    iget-object v1, v1, Layo;->c:[Ljava/lang/String;

    .line 10370
    aget-object v1, v1, v5

    invoke-virtual {v0, v5, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a(ILjava/lang/String;)V

    .line 10371
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->k:Layo;

    .line 16091
    iget-object v1, v1, Layo;->c:[Ljava/lang/String;

    .line 10371
    aget-object v1, v1, v6

    invoke-virtual {v0, v6, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a(ILjava/lang/String;)V

    .line 46
    :cond_0
    return-void

    .line 10360
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->k:Layo;

    .line 12091
    iget-object v0, v0, Layo;->c:[Ljava/lang/String;

    .line 10360
    sget v2, Laxp$i;->dt_ding_txt_uncomplete_member:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    goto :goto_0

    .line 10367
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->k:Layo;

    .line 14091
    iget-object v0, v0, Layo;->c:[Ljava/lang/String;

    .line 10367
    sget v1, Laxp$i;->ding_txt_complete_member:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    goto :goto_1
.end method

.method static synthetic j(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 46
    .line 16376
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->k:Layo;

    .line 17083
    iget-object v0, v0, Layo;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    .line 16376
    if-eqz v0, :cond_0

    .line 16377
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->k:Layo;

    .line 18083
    iget-object v3, v0, Layo;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    .line 16377
    iget v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->l:I

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->a(Z)V

    .line 16379
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->k:Layo;

    .line 18087
    iget-object v0, v0, Layo;->b:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    .line 16379
    if-eqz v0, :cond_1

    .line 16380
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->k:Layo;

    .line 19087
    iget-object v0, v0, Layo;->b:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    .line 16380
    iget v3, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->l:I

    if-eq v3, v1, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->a(Z)V

    .line 46
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 16377
    goto :goto_0

    :cond_3
    move v1, v2

    .line 16380
    goto :goto_1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 190
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->q:Lcom/alibaba/android/ding/utils/PageDisplayMode;

    sget-object v1, Lcom/alibaba/android/ding/utils/PageDisplayMode;->MULTI_SELECT:Lcom/alibaba/android/ding/utils/PageDisplayMode;

    if-ne v0, v1, :cond_1

    .line 191
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->k:Layo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->k:Layo;

    .line 7083
    iget-object v0, v0, Layo;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    .line 191
    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->k:Layo;

    .line 8083
    iget-object v0, v0, Layo;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    .line 192
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->a(I)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    sget v0, Laxp$g;->ding_activity_task_complete_detail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->setContentView(I)V

    .line 1118
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "ding_id"

    invoke-static {v0, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->f:Ljava/lang/String;

    .line 1119
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "show_ding_index"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->l:I

    .line 1123
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laxp$i;->dt_ding_receiver_menu_add:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$1;-><init>(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)V

    .line 1200
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Laxp$g;->actbar_textview:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1201
    sget v0, Laxp$f;->tv_ok:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->e:Landroid/widget/TextView;

    .line 1202
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1203
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1123
    iput-object v3, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->d:Landroid/view/View;

    .line 1132
    sget v0, Laxp$f;->svp_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/ScrollableViewPager;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->a:Lcom/alibaba/android/ding/widget/ScrollableViewPager;

    .line 1133
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->a:Lcom/alibaba/android/ding/widget/ScrollableViewPager;

    const/16 v1, 0x190

    invoke-static {v0, v1}, Lcqb;->a(Landroid/support/v4/view/ViewPager;I)V

    .line 1134
    sget v0, Laxp$f;->header_parent:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->b:Landroid/view/ViewGroup;

    .line 1135
    sget v0, Laxp$f;->indicator:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    .line 1136
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$2;-><init>(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1266
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->f:Ljava/lang/String;

    invoke-static {v0}, Lbkh;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1267
    const-string/jumbo v0, "[DingCompleteDetailPage]retrieveDing failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "invalidate dingId"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->finish()V

    .line 2238
    :goto_0
    new-instance v0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$6;-><init>(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->n:Landroid/support/v4/view/ViewPager$d;

    .line 2262
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->n:Landroid/support/v4/view/ViewPager$d;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 89
    return-void

    .line 1271
    :cond_0
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->f:Ljava/lang/String;

    new-instance v0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$7;-><init>(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)V

    const-class v3, Lcma;

    invoke-static {v0, v3, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v1, v2, v0}, Lbbp;->e(Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 93
    iget-boolean v1, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->i:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->j:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->g:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v1}, Lbkh;->B(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->q:Lcom/alibaba/android/ding/utils/PageDisplayMode;

    sget-object v2, Lcom/alibaba/android/ding/utils/PageDisplayMode;->NO_SELECT:Lcom/alibaba/android/ding/utils/PageDisplayMode;

    if-ne v1, v2, :cond_0

    .line 95
    const/4 v1, 0x1

    sget v2, Laxp$i;->sure:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 96
    .local v0, "menuItem":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->d:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 97
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 100
    .end local v0    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 105
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->k:Layo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->k:Layo;

    .line 3083
    iget-object v0, v0, Layo;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    .line 105
    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->k:Layo;

    .line 4083
    iget-object v0, v0, Layo;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    .line 4143
    iput-object v2, v0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->a:Lbhx;

    .line 4340
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->g:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_1

    .line 4343
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->g:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->p:Lckm$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->t(Lckm$a;)V

    .line 4344
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->g:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->o:Lckm$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->R(Lckm$a;)V

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->h:Lbjg;

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->h:Lbjg;

    invoke-virtual {v0}, Lbjg;->a()V

    .line 112
    iput-object v2, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->h:Lbjg;

    .line 114
    :cond_2
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 115
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 178
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->q:Lcom/alibaba/android/ding/utils/PageDisplayMode;

    sget-object v1, Lcom/alibaba/android/ding/utils/PageDisplayMode;->MULTI_SELECT:Lcom/alibaba/android/ding/utils/PageDisplayMode;

    if-ne v0, v1, :cond_1

    .line 179
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->k:Layo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->k:Layo;

    .line 5083
    iget-object v0, v0, Layo;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    .line 179
    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->k:Layo;

    .line 6083
    iget-object v0, v0, Layo;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    .line 180
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->a(I)V

    .line 182
    :cond_0
    const/4 v0, 0x1

    .line 184
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
