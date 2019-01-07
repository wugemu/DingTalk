.class public Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "DingMeetingStatusActivity.java"


# instance fields
.field private a:Lcom/alibaba/android/ding/widget/ScrollableViewPager;

.field private b:Landroid/view/ViewGroup;

.field private c:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Ljava/lang/String;

.field private g:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field private h:Lcom/alibaba/android/ding/base/objects/idl/EventModel;

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Layk;

.field private o:Lbjg;

.field private p:I

.field private q:I

.field private r:Lcom/alibaba/android/ding/utils/PageDisplayMode;

.field private s:Landroid/animation/ObjectAnimator;

.field private t:Landroid/animation/ObjectAnimator;

.field private u:Lckm$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm$a",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lckm$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm$a",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lckm$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm$a",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private x:Lckm$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm$a",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;",
            ">;"
        }
    .end annotation
.end field

.field private y:Lckm$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm$a",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private z:Landroid/support/v4/view/ViewPager$d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 82
    sget-object v0, Lcom/alibaba/android/ding/utils/PageDisplayMode;->NO_SELECT:Lcom/alibaba/android/ding/utils/PageDisplayMode;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->r:Lcom/alibaba/android/ding/utils/PageDisplayMode;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->q:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)Lbjg;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->o:Lbjg;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;Lcom/alibaba/android/ding/base/objects/ObjectDing;)Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;
    .param p1, "x1"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->g:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;Lcom/alibaba/android/ding/base/objects/idl/EventModel;)Lcom/alibaba/android/ding/base/objects/idl/EventModel;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;
    .param p1, "x1"    # Lcom/alibaba/android/ding/base/objects/idl/EventModel;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->h:Lcom/alibaba/android/ding/base/objects/idl/EventModel;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;F)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;
    .param p1, "x1"    # F

    .prologue
    .line 49
    .line 11232
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->a:Lcom/alibaba/android/ding/widget/ScrollableViewPager;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/ScrollableViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 11233
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 11234
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 11235
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v2, p1

    float-to-int v2, v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 11236
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->a:Lcom/alibaba/android/ding/widget/ScrollableViewPager;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/widget/ScrollableViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;II)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 49
    .line 25472
    invoke-static {p2}, Lbkh;->e(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->i:I

    if-eq v2, p1, :cond_3

    .line 25473
    iput p1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->i:I

    .line 25474
    iget v2, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->i:I

    if-lez v2, :cond_1

    .line 25475
    new-instance v2, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    sget v3, Laxp$i;->dt_ding_meeting_accepted:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>(Ljava/lang/String;)V

    .line 25476
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->n:Layk;

    .line 26095
    iget-object v3, v3, Layk;->d:[Ljava/lang/String;

    .line 25476
    const-string/jumbo v4, "("

    invoke-virtual {v2, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->i:I

    invoke-virtual {v2, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    .line 25481
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->n:Layk;

    .line 28095
    iget-object v3, v3, Layk;->d:[Ljava/lang/String;

    .line 25481
    aget-object v3, v3, v0

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a(ILjava/lang/String;)V

    .line 25483
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->n:Layk;

    .line 29083
    iget-object v2, v2, Layk;->a:Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;

    .line 25483
    if-eqz v2, :cond_0

    .line 25484
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->n:Layk;

    .line 30083
    iget-object v2, v2, Layk;->a:Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;

    .line 25484
    iget v3, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->p:I

    if-eq v3, v0, :cond_2

    :goto_1
    invoke-virtual {v2, v0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->a(Z)V

    .line 25514
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->supportInvalidateOptionsMenu()V

    .line 49
    return-void

    .line 25478
    :cond_1
    iput v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->i:I

    .line 25479
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->n:Layk;

    .line 27095
    iget-object v2, v2, Layk;->d:[Ljava/lang/String;

    .line 25479
    sget v3, Laxp$i;->dt_ding_meeting_accepted:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 25484
    goto :goto_1

    .line 25486
    :cond_3
    invoke-static {p2}, Lbkh;->f(I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->j:I

    if-eq v2, p1, :cond_6

    .line 25487
    iput p1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->j:I

    .line 25488
    iget v2, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->j:I

    if-lez v2, :cond_4

    .line 25489
    new-instance v2, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    sget v3, Laxp$i;->dt_ding_refuse:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>(Ljava/lang/String;)V

    .line 25490
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->n:Layk;

    .line 30095
    iget-object v3, v3, Layk;->d:[Ljava/lang/String;

    .line 25490
    const-string/jumbo v4, "("

    invoke-virtual {v2, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->j:I

    invoke-virtual {v2, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    .line 25496
    :goto_3
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->n:Layk;

    .line 33095
    iget-object v3, v3, Layk;->d:[Ljava/lang/String;

    .line 25496
    aget-object v3, v3, v5

    invoke-virtual {v2, v5, v3}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a(ILjava/lang/String;)V

    .line 25497
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->n:Layk;

    .line 34087
    iget-object v2, v2, Layk;->b:Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;

    .line 25497
    if-eqz v2, :cond_0

    .line 25498
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->n:Layk;

    .line 35087
    iget-object v2, v2, Layk;->b:Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;

    .line 25498
    iget v3, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->p:I

    if-eq v3, v5, :cond_5

    :goto_4
    invoke-virtual {v2, v0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->a(Z)V

    goto :goto_2

    .line 25492
    :cond_4
    iput v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->j:I

    .line 25493
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->n:Layk;

    .line 31095
    iget-object v2, v2, Layk;->d:[Ljava/lang/String;

    .line 25493
    sget v3, Laxp$i;->dt_ding_refuse:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 25494
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->n:Layk;

    .line 32095
    iget-object v3, v3, Layk;->d:[Ljava/lang/String;

    .line 25494
    aget-object v3, v3, v5

    invoke-virtual {v2, v5, v3}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a(ILjava/lang/String;)V

    goto :goto_3

    :cond_5
    move v0, v1

    .line 25498
    goto :goto_4

    .line 25500
    :cond_6
    invoke-static {p2}, Lbkh;->d(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->k:I

    if-eq v2, p1, :cond_0

    .line 25501
    iput p1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->k:I

    .line 25502
    iget v2, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->k:I

    if-lez v2, :cond_7

    .line 25503
    new-instance v2, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    sget v3, Laxp$i;->dt_ding_meeting_unresponse:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>(Ljava/lang/String;)V

    .line 25504
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->n:Layk;

    .line 35095
    iget-object v3, v3, Layk;->d:[Ljava/lang/String;

    .line 25504
    const-string/jumbo v4, "("

    invoke-virtual {v2, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->k:I

    invoke-virtual {v2, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 25509
    :goto_5
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->n:Layk;

    .line 37095
    iget-object v3, v3, Layk;->d:[Ljava/lang/String;

    .line 25509
    aget-object v3, v3, v1

    invoke-virtual {v2, v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a(ILjava/lang/String;)V

    .line 25510
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->n:Layk;

    .line 38091
    iget-object v2, v2, Layk;->c:Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;

    .line 25510
    if-eqz v2, :cond_0

    .line 25511
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->n:Layk;

    .line 39091
    iget-object v2, v2, Layk;->c:Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;

    .line 25511
    iget v3, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->p:I

    if-eqz v3, :cond_8

    :goto_6
    invoke-virtual {v2, v0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->a(Z)V

    goto/16 :goto_2

    .line 25506
    :cond_7
    iput v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->k:I

    .line 25507
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->n:Layk;

    .line 36095
    iget-object v2, v2, Layk;->d:[Ljava/lang/String;

    .line 25507
    sget v3, Laxp$i;->dt_ding_meeting_unresponse:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    goto :goto_5

    :cond_8
    move v0, v1

    .line 25511
    goto :goto_6
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;Lcom/alibaba/android/ding/utils/PageDisplayMode;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;
    .param p1, "x1"    # Lcom/alibaba/android/ding/utils/PageDisplayMode;

    .prologue
    .line 49
    .line 11528
    if-nez p1, :cond_0

    .line 11529
    sget-object p1, Lcom/alibaba/android/ding/utils/PageDisplayMode;->NO_SELECT:Lcom/alibaba/android/ding/utils/PageDisplayMode;

    .line 11531
    .end local p1    # "x1":Lcom/alibaba/android/ding/utils/PageDisplayMode;
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->r:Lcom/alibaba/android/ding/utils/PageDisplayMode;

    if-eq p1, v0, :cond_3

    .line 11534
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->r:Lcom/alibaba/android/ding/utils/PageDisplayMode;

    .line 11535
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->r:Lcom/alibaba/android/ding/utils/PageDisplayMode;

    sget-object v1, Lcom/alibaba/android/ding/utils/PageDisplayMode;->NO_SELECT:Lcom/alibaba/android/ding/utils/PageDisplayMode;

    if-ne v0, v1, :cond_4

    .line 11536
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->a:Lcom/alibaba/android/ding/widget/ScrollableViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/ScrollableViewPager;->setScrollable(Z)V

    .line 11538
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->t:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->t:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11539
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->t:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 11541
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->s:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 11542
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->s:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 11554
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->supportInvalidateOptionsMenu()V

    .line 11556
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_3

    .line 11559
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->r:Lcom/alibaba/android/ding/utils/PageDisplayMode;

    sget-object v1, Lcom/alibaba/android/ding/utils/PageDisplayMode;->NO_SELECT:Lcom/alibaba/android/ding/utils/PageDisplayMode;

    if-ne v0, v1, :cond_6

    .line 11560
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Laxp$i;->ding_confirm_detail_v2:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    :cond_3
    :goto_1
    return-void

    .line 11544
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->r:Lcom/alibaba/android/ding/utils/PageDisplayMode;

    sget-object v1, Lcom/alibaba/android/ding/utils/PageDisplayMode;->MULTI_SELECT:Lcom/alibaba/android/ding/utils/PageDisplayMode;

    if-ne v0, v1, :cond_2

    .line 11545
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->a:Lcom/alibaba/android/ding/widget/ScrollableViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/ScrollableViewPager;->setScrollable(Z)V

    .line 11547
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->s:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->s:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11548
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->s:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 11550
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->t:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 11551
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->t:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 11562
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Laxp$i;->dt_task_cancel_remind:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->l:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->p:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->b:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->m:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    .prologue
    const-wide/16 v8, 0x1f4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 49
    .line 11147
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->b:Landroid/view/ViewGroup;

    const-string/jumbo v1, "translationY"

    new-array v2, v7, [F

    iget v3, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->q:I

    neg-int v3, v3

    int-to-float v3, v3

    aput v3, v2, v5

    aput v4, v2, v6

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->s:Landroid/animation/ObjectAnimator;

    .line 11148
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->s:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 11149
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->s:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$7;-><init>(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 11156
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->b:Landroid/view/ViewGroup;

    const-string/jumbo v1, "translationY"

    new-array v2, v7, [F

    aput v4, v2, v5

    iget v3, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->q:I

    neg-int v3, v3

    int-to-float v3, v3

    aput v3, v2, v6

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->t:Landroid/animation/ObjectAnimator;

    .line 11157
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->t:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$8;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$8;-><init>(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 11164
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->t:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 49
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    .prologue
    .line 49
    iget v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->p:I

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)Layk;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->n:Layk;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->g:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)Lcom/alibaba/android/ding/base/objects/idl/EventModel;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->h:Lcom/alibaba/android/ding/base/objects/idl/EventModel;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    .prologue
    .line 49
    .line 12177
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->n:Layk;

    if-nez v0, :cond_0

    .line 12178
    new-instance v1, Layk;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->getSupportFragmentManager()Lcn;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->f:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->l:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->m:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->g:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->w(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v1, p0, v2, v3, v0}, Layk;-><init>(Landroid/app/Activity;Lcn;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->n:Layk;

    .line 12180
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->a:Lcom/alibaba/android/ding/widget/ScrollableViewPager;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->n:Layk;

    invoke-virtual {v1}, Layk;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/ScrollableViewPager;->setOffscreenPageLimit(I)V

    .line 12181
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->a:Lcom/alibaba/android/ding/widget/ScrollableViewPager;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->n:Layk;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/ScrollableViewPager;->setAdapter(Lgl;)V

    .line 12182
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->a:Lcom/alibaba/android/ding/widget/ScrollableViewPager;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 12183
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->a:Lcom/alibaba/android/ding/widget/ScrollableViewPager;

    iget v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->p:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/ScrollableViewPager;->setCurrentItem(I)V

    .line 12184
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->p:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setCurrentItem(I)V

    .line 12186
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->n:Layk;

    .line 13091
    iget-object v0, v0, Layk;->c:Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;

    .line 12187
    if-eqz v0, :cond_1

    .line 12188
    new-instance v1, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$9;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$9;-><init>(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)V

    .line 14085
    iput-object v1, v0, Lcom/alibaba/android/ding/fragment/BaseMultipleModeFragment;->a:Lbhx;

    .line 49
    :cond_1
    return-void

    .line 12178
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic i(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    .prologue
    .line 49
    .line 14331
    new-instance v0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$12;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$12;-><init>(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->v:Lckm$a;

    .line 14341
    new-instance v0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$13;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$13;-><init>(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->u:Lckm$a;

    .line 14351
    new-instance v0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$2;-><init>(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->w:Lckm$a;

    .line 14361
    new-instance v0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$3;-><init>(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->x:Lckm$a;

    .line 14371
    new-instance v0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$4;-><init>(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->y:Lckm$a;

    .line 14382
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->g:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_1

    .line 14383
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->g:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->u:Lckm$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->y(Lckm$a;)V

    .line 14384
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->g:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->v:Lckm$a;

    .line 15056
    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->M:Lckm;

    invoke-virtual {v0, v1}, Lckm;->a(Lckm$a;)V

    .line 14385
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->g:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->w:Lckm$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->w(Lckm$a;)V

    .line 14386
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->g:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->y:Lckm$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->s(Lckm$a;)V

    .line 14387
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->g:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    instance-of v0, v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    if-eqz v0, :cond_0

    .line 14388
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->g:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->x:Lckm$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->Y(Lckm$a;)V

    .line 14391
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->o:Lbjg;

    if-nez v0, :cond_1

    .line 14392
    new-instance v1, Lbjg;

    const-string/jumbo v2, "identify_ding_meeting_status_activity"

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->g:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    new-instance v0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$5;-><init>(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)V

    const-class v4, Lcom/alibaba/wukong/Callback;

    .line 14395
    invoke-static {v0, v4, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-direct {v1, p0, v2, v3, v0}, Lbjg;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/wukong/Callback;)V

    iput-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->o:Lbjg;

    .line 49
    :cond_1
    return-void
.end method

.method static synthetic j(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    .line 15518
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->g:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_0

    .line 15521
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->g:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->K()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->i:I

    .line 15522
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->g:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 15562
    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->M:Lckm;

    invoke-virtual {v0}, Lckm;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 15522
    iput v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->j:I

    .line 15523
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->g:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->L()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->k:I

    .line 16440
    iget v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->i:I

    if-lez v0, :cond_1

    .line 16441
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    sget v1, Laxp$i;->dt_ding_meeting_accepted:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>(Ljava/lang/String;)V

    .line 16442
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->n:Layk;

    .line 17095
    iget-object v1, v1, Layk;->d:[Ljava/lang/String;

    .line 16442
    const-string/jumbo v2, "("

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->i:I

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    .line 16448
    :goto_0
    iget v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->j:I

    if-lez v0, :cond_2

    .line 16449
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    sget v1, Laxp$i;->dt_ding_refuse:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>(Ljava/lang/String;)V

    .line 16450
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->n:Layk;

    .line 19095
    iget-object v1, v1, Layk;->d:[Ljava/lang/String;

    .line 16450
    const-string/jumbo v2, "("

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->j:I

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    .line 16456
    :goto_1
    iget v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->k:I

    if-lez v0, :cond_3

    .line 16457
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    sget v1, Laxp$i;->dt_ding_meeting_unresponse:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>(Ljava/lang/String;)V

    .line 16458
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->n:Layk;

    .line 21095
    iget-object v1, v1, Layk;->d:[Ljava/lang/String;

    .line 16458
    const-string/jumbo v2, "("

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->k:I

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    .line 16464
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->supportInvalidateOptionsMenu()V

    .line 16465
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->n:Layk;

    .line 23095
    iget-object v1, v1, Layk;->d:[Ljava/lang/String;

    .line 16465
    aget-object v1, v1, v4

    invoke-virtual {v0, v4, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a(ILjava/lang/String;)V

    .line 16466
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->n:Layk;

    .line 24095
    iget-object v1, v1, Layk;->d:[Ljava/lang/String;

    .line 16466
    aget-object v1, v1, v5

    invoke-virtual {v0, v5, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a(ILjava/lang/String;)V

    .line 16467
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->n:Layk;

    .line 25095
    iget-object v1, v1, Layk;->d:[Ljava/lang/String;

    .line 16467
    aget-object v1, v1, v3

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a(ILjava/lang/String;)V

    .line 49
    :cond_0
    return-void

    .line 16444
    :cond_1
    iput v3, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->i:I

    .line 16445
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->n:Layk;

    .line 18095
    iget-object v0, v0, Layk;->d:[Ljava/lang/String;

    .line 16445
    sget v1, Laxp$i;->dt_ding_meeting_accepted:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    goto/16 :goto_0

    .line 16452
    :cond_2
    iput v3, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->j:I

    .line 16453
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->n:Layk;

    .line 20095
    iget-object v0, v0, Layk;->d:[Ljava/lang/String;

    .line 16453
    sget v1, Laxp$i;->dt_ding_refuse:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    goto :goto_1

    .line 16460
    :cond_3
    iput v3, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->k:I

    .line 16461
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->n:Layk;

    .line 22095
    iget-object v0, v0, Layk;->d:[Ljava/lang/String;

    .line 16461
    sget v1, Laxp$i;->dt_ding_meeting_unresponse:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_2
.end method

.method static synthetic k(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)Lcom/alibaba/android/ding/widget/ScrollableViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->a:Lcom/alibaba/android/ding/widget/ScrollableViewPager;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 221
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->r:Lcom/alibaba/android/ding/utils/PageDisplayMode;

    sget-object v1, Lcom/alibaba/android/ding/utils/PageDisplayMode;->MULTI_SELECT:Lcom/alibaba/android/ding/utils/PageDisplayMode;

    if-ne v0, v1, :cond_1

    .line 222
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->n:Layk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->n:Layk;

    .line 6091
    iget-object v0, v0, Layk;->c:Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;

    .line 222
    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->n:Layk;

    .line 7091
    iget-object v0, v0, Layk;->c:Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;

    .line 223
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->a(I)V

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 227
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
    .line 96
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    sget v0, Laxp$g;->ding_activity_task_complete_detail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->setContentView(I)V

    .line 2117
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "ding_id"

    invoke-static {v0, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->f:Ljava/lang/String;

    .line 2118
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "show_ding_index"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->p:I

    .line 2122
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laxp$i;->dt_ding_receiver_menu_add:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$1;-><init>(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)V

    .line 2168
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Laxp$g;->actbar_textview:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2169
    sget v0, Laxp$f;->tv_ok:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->e:Landroid/widget/TextView;

    .line 2170
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2171
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2122
    iput-object v3, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->d:Landroid/view/View;

    .line 2131
    sget v0, Laxp$f;->svp_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/ScrollableViewPager;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->a:Lcom/alibaba/android/ding/widget/ScrollableViewPager;

    .line 2132
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->a:Lcom/alibaba/android/ding/widget/ScrollableViewPager;

    const/16 v1, 0x190

    invoke-static {v0, v1}, Lcqb;->a(Landroid/support/v4/view/ViewPager;I)V

    .line 2133
    sget v0, Laxp$f;->header_parent:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->b:Landroid/view/ViewGroup;

    .line 2134
    sget v0, Laxp$f;->indicator:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    .line 2135
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$6;-><init>(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2274
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->f:Ljava/lang/String;

    invoke-static {v0}, Lbkh;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2275
    const-string/jumbo v0, "[DingMeetingStatusPage]retrieveDing failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "invalidate DingId"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2276
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->finish()V

    .line 3241
    :goto_0
    new-instance v0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$10;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$10;-><init>(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->z:Landroid/support/v4/view/ViewPager$d;

    .line 3270
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->z:Landroid/support/v4/view/ViewPager$d;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 102
    return-void

    .line 2279
    :cond_0
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->f:Ljava/lang/String;

    new-instance v0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$11;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$11;-><init>(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)V

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

    .line 106
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->g:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v1}, Lbkh;->w(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->g:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v1}, Lbkh;->v(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->r:Lcom/alibaba/android/ding/utils/PageDisplayMode;

    sget-object v2, Lcom/alibaba/android/ding/utils/PageDisplayMode;->NO_SELECT:Lcom/alibaba/android/ding/utils/PageDisplayMode;

    if-ne v1, v2, :cond_0

    .line 108
    const/4 v1, 0x1

    sget v2, Laxp$i;->sure:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 109
    .local v0, "menuItem":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->d:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 110
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 113
    .end local v0    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 569
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->n:Layk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->n:Layk;

    .line 8091
    iget-object v0, v0, Layk;->c:Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;

    .line 569
    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->n:Layk;

    .line 9091
    iget-object v0, v0, Layk;->c:Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;

    .line 10085
    iput-object v1, v0, Lcom/alibaba/android/ding/fragment/BaseMultipleModeFragment;->a:Lbhx;

    .line 10415
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->g:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_6

    .line 10416
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->o:Lbjg;

    if-eqz v0, :cond_1

    .line 10417
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->o:Lbjg;

    invoke-virtual {v0}, Lbjg;->a()V

    .line 10418
    iput-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->o:Lbjg;

    .line 10420
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->y:Lckm$a;

    if-eqz v0, :cond_2

    .line 10421
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->g:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->y:Lckm$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->t(Lckm$a;)V

    .line 10423
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->u:Lckm$a;

    if-eqz v0, :cond_3

    .line 10424
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->g:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->u:Lckm$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->z(Lckm$a;)V

    .line 10426
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->v:Lckm$a;

    if-eqz v0, :cond_4

    .line 10427
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->g:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->v:Lckm$a;

    .line 11060
    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->M:Lckm;

    invoke-virtual {v0, v1}, Lckm;->b(Lckm$a;)V

    .line 10429
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->w:Lckm$a;

    if-eqz v0, :cond_5

    .line 10430
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->g:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->w:Lckm$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->x(Lckm$a;)V

    .line 10432
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->g:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    instance-of v0, v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    if-eqz v0, :cond_6

    .line 10433
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->g:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->x:Lckm$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->Z(Lckm$a;)V

    .line 573
    :cond_6
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 574
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 208
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->r:Lcom/alibaba/android/ding/utils/PageDisplayMode;

    sget-object v1, Lcom/alibaba/android/ding/utils/PageDisplayMode;->MULTI_SELECT:Lcom/alibaba/android/ding/utils/PageDisplayMode;

    if-ne v0, v1, :cond_1

    .line 209
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->n:Layk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->n:Layk;

    .line 4091
    iget-object v0, v0, Layk;->c:Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;

    .line 209
    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->n:Layk;

    .line 5091
    iget-object v0, v0, Layk;->c:Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;

    .line 210
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->a(I)V

    .line 212
    :cond_0
    const/4 v0, 0x1

    .line 214
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;
    .param p2, "outPersistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 204
    return-void
.end method
