.class public Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;
.super Landroid/widget/FrameLayout;
.source "WXSwipeLayout.java"

# interfaces
.implements Lge;
.implements Lgh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXRefreshAnimatorListener;,
        Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnLoadingListener;,
        Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnRefreshListener;,
        Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$OnRefreshOffsetChangedListener;
    }
.end annotation


# static fields
.field private static final DAMPING:F = 0.4f

.field private static final INVALID:I = -0x1

.field private static final LOAD_MORE:I = 0x1

.field private static final PULL_REFRESH:I = 0x0

.field private static final overFlow:F = 1.0f


# instance fields
.field private footerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

.field private headerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

.field private isConfirm:Z

.field private volatile loadingViewFlowHeight:F

.field private volatile loadingViewHeight:F

.field private mCurrentAction:I

.field private mNestedScrollAcceptedParent:Landroid/view/ViewParent;

.field private mNestedScrollInProgress:Z

.field private mNestedScrollingChildHelper:Lgg;

.field private mNestedScrollingParentHelper:Lgj;

.field private final mParentOffsetInWindow:[I

.field private final mParentScrollConsumed:[I

.field private mProgressBgColor:I

.field private mProgressColor:I

.field private mPullLoadEnable:Z

.field private mPullRefreshEnable:Z

.field private final mRefreshOffsetChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$OnRefreshOffsetChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshViewBgColor:I

.field private volatile mRefreshing:Z

.field private mTargetView:Landroid/view/View;

.field private onLoadingListener:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnLoadingListener;

.field private onRefreshListener:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnRefreshListener;

.field private volatile refreshViewFlowHeight:F

.field private volatile refreshViewHeight:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 141
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 52
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mParentScrollConsumed:[I

    .line 53
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mParentOffsetInWindow:[I

    .line 60
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshOffsetChangedListeners:Ljava/util/List;

    .line 113
    iput-boolean v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullRefreshEnable:Z

    .line 114
    iput-boolean v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullLoadEnable:Z

    .line 117
    iput-boolean v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshing:Z

    .line 120
    iput v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->refreshViewHeight:F

    .line 121
    iput v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->loadingViewHeight:F

    .line 124
    iput v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->refreshViewFlowHeight:F

    .line 125
    iput v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->loadingViewFlowHeight:F

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mCurrentAction:I

    .line 133
    iput-boolean v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isConfirm:Z

    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 146
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mParentScrollConsumed:[I

    .line 53
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mParentOffsetInWindow:[I

    .line 60
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshOffsetChangedListeners:Ljava/util/List;

    .line 113
    iput-boolean v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullRefreshEnable:Z

    .line 114
    iput-boolean v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullLoadEnable:Z

    .line 117
    iput-boolean v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshing:Z

    .line 120
    iput v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->refreshViewHeight:F

    .line 121
    iput v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->loadingViewHeight:F

    .line 124
    iput v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->refreshViewFlowHeight:F

    .line 125
    iput v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->loadingViewFlowHeight:F

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mCurrentAction:I

    .line 133
    iput-boolean v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isConfirm:Z

    .line 147
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 151
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mParentScrollConsumed:[I

    .line 53
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mParentOffsetInWindow:[I

    .line 60
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshOffsetChangedListeners:Ljava/util/List;

    .line 113
    iput-boolean v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullRefreshEnable:Z

    .line 114
    iput-boolean v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullLoadEnable:Z

    .line 117
    iput-boolean v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshing:Z

    .line 120
    iput v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->refreshViewHeight:F

    .line 121
    iput v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->loadingViewHeight:F

    .line 124
    iput v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->refreshViewFlowHeight:F

    .line 125
    iput v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->loadingViewFlowHeight:F

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mCurrentAction:I

    .line 133
    iput-boolean v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isConfirm:Z

    .line 152
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 157
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mParentScrollConsumed:[I

    .line 53
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mParentOffsetInWindow:[I

    .line 60
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshOffsetChangedListeners:Ljava/util/List;

    .line 113
    iput-boolean v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullRefreshEnable:Z

    .line 114
    iput-boolean v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullLoadEnable:Z

    .line 117
    iput-boolean v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshing:Z

    .line 120
    iput v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->refreshViewHeight:F

    .line 121
    iput v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->loadingViewHeight:F

    .line 124
    iput v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->refreshViewFlowHeight:F

    .line 125
    iput v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->loadingViewFlowHeight:F

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mCurrentAction:I

    .line 133
    iput-boolean v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isConfirm:Z

    .line 158
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->headerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;I)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->notifyOnRefreshOffsetChangedListener(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;F)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;
    .param p1, "x1"    # F

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->moveTargetView(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnRefreshListener;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->onRefreshListener:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnRefreshListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->resetRefreshState()V

    return-void
.end method

.method static synthetic access$500(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->footerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnLoadingListener;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->onLoadingListener:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnLoadingListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->resetLoadmoreState()V

    return-void
.end method

.method private calculateDistanceY(Landroid/view/View;I)D
    .locals 8
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dy"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 459
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 460
    .local v2, "viewHeight":I
    int-to-float v3, v2

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-double v4, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double/2addr v4, v6

    int-to-double v6, v2

    div-double/2addr v4, v6

    const-wide v6, 0x3fd99999a0000000L    # 0.4000000059604645

    mul-double v0, v4, v6

    .line 461
    .local v0, "ratio":D
    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v3, v0, v4

    if-gtz v3, :cond_0

    .line 463
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    .line 465
    :cond_0
    int-to-double v4, p2

    mul-double/2addr v4, v0

    return-wide v4
.end method

.method private handlerAction()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isRefreshing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isConfirm:Z

    .line 536
    iget-boolean v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullRefreshEnable:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mCurrentAction:I

    if-nez v1, :cond_2

    .line 537
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->headerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 538
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v1, v1

    iget v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->refreshViewHeight:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    .line 539
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-direct {p0, v1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->startRefresh(I)V

    .line 547
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullLoadEnable:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mCurrentAction:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 548
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->footerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 549
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v1, v1

    iget v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->loadingViewHeight:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_5

    .line 550
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-direct {p0, v1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->startLoadmore(I)V

    goto :goto_0

    .line 540
    :cond_3
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-lez v1, :cond_4

    .line 541
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-direct {p0, v1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->resetHeaderView(I)V

    goto :goto_1

    .line 543
    :cond_4
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->resetRefreshState()V

    goto :goto_1

    .line 551
    :cond_5
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-lez v1, :cond_6

    .line 552
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-direct {p0, v1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->resetFootView(I)V

    goto :goto_0

    .line 554
    :cond_6
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->resetLoadmoreState()V

    goto :goto_0
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 163
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 164
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "WXSwipeLayout should not have more than one child"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    new-instance v0, Lgj;

    invoke-direct {v0, p0}, Lgj;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollingParentHelper:Lgj;

    .line 168
    new-instance v0, Lgg;

    invoke-direct {v0, p0}, Lgg;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollingChildHelper:Lgg;

    .line 169
    invoke-virtual {p0, v2}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->setNestedScrollingEnabled(Z)V

    .line 171
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    .line 178
    :goto_0
    return-void

    .line 175
    :cond_1
    iput v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshViewBgColor:I

    .line 176
    iput v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mProgressBgColor:I

    .line 177
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mProgressColor:I

    goto :goto_0
.end method

.method private moveSpinner(F)Z
    .locals 5
    .param p1, "distanceY"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 474
    iget-boolean v3, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshing:Z

    if-eqz v3, :cond_1

    .line 514
    :cond_0
    :goto_0
    return v1

    .line 478
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->canChildScrollUp()Z

    move-result v3

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullRefreshEnable:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mCurrentAction:I

    if-nez v3, :cond_4

    .line 480
    iget-object v3, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->headerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    invoke-virtual {v3}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 481
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v3, v3

    add-float/2addr v3, p1

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 482
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-gez v3, :cond_2

    .line 483
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 486
    :cond_2
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-nez v3, :cond_3

    .line 487
    iput-boolean v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isConfirm:Z

    .line 488
    iput v4, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mCurrentAction:I

    .line 490
    :cond_3
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->headerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    invoke-virtual {v1, v0}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->onRefreshListener:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnRefreshListener;

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v4, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->refreshViewFlowHeight:F

    invoke-interface {v1, p1, v3, v4}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnRefreshListener;->onPullingDown(FIF)V

    .line 492
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-direct {p0, v1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->notifyOnRefreshOffsetChangedListener(I)V

    .line 493
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->headerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v3, v3

    iget v4, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->refreshViewFlowHeight:F

    div-float/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setProgressRotation(F)V

    .line 494
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->moveTargetView(F)V

    move v1, v2

    .line 495
    goto :goto_0

    .line 496
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->canChildScrollDown()Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullLoadEnable:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mCurrentAction:I

    if-ne v3, v2, :cond_0

    .line 498
    iget-object v3, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->footerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    invoke-virtual {v3}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 499
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v3, v3

    sub-float/2addr v3, p1

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 500
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-gez v3, :cond_5

    .line 501
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 504
    :cond_5
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-nez v3, :cond_6

    .line 505
    iput-boolean v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isConfirm:Z

    .line 506
    iput v4, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mCurrentAction:I

    .line 508
    :cond_6
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->footerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    invoke-virtual {v1, v0}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 509
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->onLoadingListener:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnLoadingListener;

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v4, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->loadingViewFlowHeight:F

    invoke-interface {v1, p1, v3, v4}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnLoadingListener;->onPullingUp(FIF)V

    .line 510
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->footerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v3, v3

    iget v4, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->loadingViewFlowHeight:F

    div-float/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setProgressRotation(F)V

    .line 511
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->moveTargetView(F)V

    move v1, v2

    .line 512
    goto/16 :goto_0
.end method

.method private moveTargetView(F)V
    .locals 1
    .param p1, "h"    # F

    .prologue
    .line 522
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 523
    return-void
.end method

.method private notifyOnRefreshOffsetChangedListener(I)V
    .locals 3
    .param p1, "verticalOffset"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 770
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshOffsetChangedListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$OnRefreshOffsetChangedListener;

    .line 771
    .local v0, "listener":Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$OnRefreshOffsetChangedListener;
    invoke-interface {v0, p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$OnRefreshOffsetChangedListener;->onOffsetChanged(I)V

    goto :goto_0

    .line 773
    .end local v0    # "listener":Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$OnRefreshOffsetChangedListener;
    :cond_0
    return-void
.end method

.method private resetFootView(I)V
    .locals 4
    .param p1, "headerViewHeight"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 661
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->footerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->stopAnimation()V

    .line 662
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->footerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3fa00000    # 1.25f

    invoke-virtual {v1, v2, v3}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setStartEndTrim(FF)V

    .line 663
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    int-to-float v3, p1

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 664
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$7;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$7;-><init>(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 673
    new-instance v1, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$8;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$8;-><init>(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 680
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 681
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 682
    return-void
.end method

.method private resetHeaderView(I)V
    .locals 5
    .param p1, "headerViewHeight"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 595
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->headerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->stopAnimation()V

    .line 596
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->headerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-virtual {v1, v4, v2}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setStartEndTrim(FF)V

    .line 597
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    int-to-float v3, p1

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v4, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 598
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$3;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$3;-><init>(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 608
    new-instance v1, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$4;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$4;-><init>(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 615
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 616
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 617
    return-void
.end method

.method private resetLoadmoreState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 685
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshing:Z

    .line 686
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isConfirm:Z

    .line 687
    const/4 v0, -0x1

    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mCurrentAction:I

    .line 689
    return-void
.end method

.method private resetRefreshState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 620
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshing:Z

    .line 621
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isConfirm:Z

    .line 622
    const/4 v0, -0x1

    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mCurrentAction:I

    .line 624
    return-void
.end method

.method private setRefreshView()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v6, 0x50

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 203
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 204
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v1, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->headerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    .line 205
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->headerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    const/4 v2, 0x0

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-virtual {v1, v2, v3}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setStartEndTrim(FF)V

    .line 206
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->headerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    iget v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshViewBgColor:I

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setBackgroundColor(I)V

    .line 207
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->headerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    iget v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mProgressBgColor:I

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setProgressBgColor(I)V

    .line 208
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->headerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    iget v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mProgressColor:I

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setProgressColor(I)V

    .line 209
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->headerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    invoke-virtual {v1, v6}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setContentGravity(I)V

    .line 210
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->headerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    invoke-virtual {p0, v1, v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v0, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 214
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 215
    new-instance v1, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->footerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    .line 216
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->footerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3fa00000    # 1.25f

    invoke-virtual {v1, v2, v3}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setStartEndTrim(FF)V

    .line 217
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->footerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    iget v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshViewBgColor:I

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setBackgroundColor(I)V

    .line 218
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->footerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    iget v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mProgressBgColor:I

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setProgressBgColor(I)V

    .line 219
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->footerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    iget v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mProgressColor:I

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setProgressColor(I)V

    .line 220
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->footerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setContentGravity(I)V

    .line 221
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->footerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    invoke-virtual {p0, v1, v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    return-void
.end method

.method private startLoadmore(I)V
    .locals 5
    .param p1, "headerViewHeight"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 631
    iput-boolean v4, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshing:Z

    .line 632
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    int-to-float v3, p1

    aput v3, v1, v2

    iget v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->loadingViewHeight:F

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 633
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$5;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$5;-><init>(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 642
    new-instance v1, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$6;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$6;-><init>(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 652
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 653
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 654
    return-void
.end method

.method private startRefresh(I)V
    .locals 5
    .param p1, "headerViewHeight"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 564
    iput-boolean v4, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshing:Z

    .line 565
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    int-to-float v3, p1

    aput v3, v1, v2

    iget v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->refreshViewHeight:F

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 566
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$1;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$1;-><init>(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 576
    new-instance v1, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$2;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$2;-><init>(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 586
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 587
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 588
    return-void
.end method


# virtual methods
.method public addOnRefreshOffsetChangedListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$OnRefreshOffsetChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$OnRefreshOffsetChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 756
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshOffsetChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshOffsetChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 759
    :cond_0
    return-void
.end method

.method public addTargetView(Landroid/view/View;)V
    .locals 2
    .param p1, "mInnerView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, -0x1

    .line 195
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->setRefreshView()V

    .line 197
    return-void
.end method

.method public canChildScrollDown()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 718
    iget-object v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mTargetView:Landroid/view/View;

    if-nez v2, :cond_0

    move v2, v3

    .line 737
    :goto_0
    return v2

    .line 721
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-ge v2, v5, :cond_6

    .line 722
    iget-object v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mTargetView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/AbsListView;

    if-eqz v2, :cond_3

    .line 723
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mTargetView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    .line 724
    .local v0, "absListView":Landroid/widget/AbsListView;
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 725
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 726
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 727
    .local v1, "lastChildBottom":I
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v5, v2, :cond_1

    .line 728
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0

    .end local v1    # "lastChildBottom":I
    :cond_2
    move v2, v3

    .line 730
    goto :goto_0

    .line 734
    .end local v0    # "absListView":Landroid/widget/AbsListView;
    :cond_3
    iget-object v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mTargetView:Landroid/view/View;

    invoke-static {v2, v4}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mTargetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    if-lez v2, :cond_5

    :cond_4
    move v2, v4

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_0

    .line 737
    :cond_6
    iget-object v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mTargetView:Landroid/view/View;

    invoke-static {v2, v4}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;I)Z

    move-result v2

    goto :goto_0
.end method

.method public canChildScrollUp()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 696
    iget-object v3, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mTargetView:Landroid/view/View;

    if-nez v3, :cond_1

    .line 709
    :cond_0
    :goto_0
    return v1

    .line 699
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-ge v3, v4, :cond_5

    .line 700
    iget-object v3, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mTargetView:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/AbsListView;

    if-eqz v3, :cond_3

    .line 701
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mTargetView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    .line 702
    .local v0, "absListView":Landroid/widget/AbsListView;
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 703
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 704
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v4

    if-ge v3, v4, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 706
    .end local v0    # "absListView":Landroid/widget/AbsListView;
    :cond_3
    iget-object v3, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mTargetView:Landroid/view/View;

    invoke-static {v3, v5}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;I)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mTargetView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v3

    if-lez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .line 709
    :cond_5
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mTargetView:Landroid/view/View;

    invoke-static {v1, v5}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;I)Z

    move-result v1

    goto :goto_0
.end method

.method public dipToPx(Landroid/content/Context;F)F
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 742
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 743
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const/4 v1, 0x1

    invoke-static {v1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    return v1
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z

    .prologue
    .line 302
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollingChildHelper:Lgg;

    invoke-virtual {v0, p1, p2, p3}, Lgg;->a(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    .line 307
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollingChildHelper:Lgg;

    invoke-virtual {v0, p1, p2}, Lgg;->a(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I

    .prologue
    .line 294
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollingChildHelper:Lgg;

    invoke-virtual {v0, p1, p2, p3, p4}, Lgg;->a(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 288
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollingChildHelper:Lgg;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lgg;->a(IIII[I)Z

    move-result v0

    return v0
.end method

.method public finishPullLoad()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 788
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mCurrentAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 789
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->footerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->resetFootView(I)V

    .line 791
    :cond_0
    return-void

    .line 789
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->footerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method public finishPullRefresh()V
    .locals 1

    .prologue
    .line 779
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mCurrentAction:I

    if-nez v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->headerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->resetHeaderView(I)V

    .line 782
    :cond_0
    return-void

    .line 780
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->headerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getFooterView()Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->footerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    return-object v0
.end method

.method public getHeaderView()Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->headerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    return-object v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollingParentHelper:Lgj;

    .line 3088
    iget v0, v0, Lgj;->a:I

    .line 427
    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 282
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollingChildHelper:Lgg;

    .line 2099
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgg;->a(I)Z

    move-result v0

    .line 282
    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollingChildHelper:Lgg;

    .line 1085
    iget-boolean v0, v0, Lgg;->a:Z

    .line 247
    return v0
.end method

.method public isPullLoadEnable()Z
    .locals 1

    .prologue
    .line 802
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullLoadEnable:Z

    return v0
.end method

.method public isPullRefreshEnable()Z
    .locals 1

    .prologue
    .line 810
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullRefreshEnable:Z

    return v0
.end method

.method public isRefreshing()Z
    .locals 1

    .prologue
    .line 818
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshing:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 182
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 183
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mTargetView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mTargetView:Landroid/view/View;

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->headerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->footerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    if-nez v0, :cond_2

    .line 188
    :cond_1
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->setRefreshView()V

    .line 191
    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 226
    iget-boolean v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullRefreshEnable:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullLoadEnable:Z

    if-nez v1, :cond_1

    .line 235
    :cond_0
    :goto_0
    return v0

    .line 229
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->canChildScrollUp()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshing:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollInProgress:Z

    if-nez v1, :cond_0

    .line 235
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p0, p2, p3, p4}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->dispatchNestedFling(FFZ)Z

    move-result v0

    .line 328
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {p0, p2, p3}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->dispatchNestedPreFling(FF)Z

    move-result v0

    .line 319
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 9
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 359
    iget-object v3, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mParentScrollConsumed:[I

    .line 360
    .local v3, "parentConsumed":[I
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isNestedScrollingEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 361
    const/4 v6, 0x0

    aget v6, p4, v6

    sub-int v6, p2, v6

    const/4 v7, 0x1

    aget v7, p4, v7

    sub-int v7, p3, v7

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v7, v3, v8}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 362
    const/4 v6, 0x0

    aget v7, p4, v6

    const/4 v8, 0x0

    aget v8, v3, v8

    add-int/2addr v7, v8

    aput v7, p4, v6

    .line 363
    const/4 v6, 0x1

    aget v7, p4, v6

    const/4 v8, 0x1

    aget v8, v3, v8

    add-int/2addr v7, v8

    aput v7, p4, v6

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    iget-boolean v6, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullRefreshEnable:Z

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullLoadEnable:Z

    if-eqz v6, :cond_0

    .line 375
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->canChildScrollUp()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isNestedScrollingEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 376
    iget-object v6, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollAcceptedParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollAcceptedParent:Landroid/view/ViewParent;

    iget-object v7, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mTargetView:Landroid/view/View;

    if-eq v6, v7, :cond_3

    .line 377
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollAcceptedParent:Landroid/view/ViewParent;

    check-cast v1, Landroid/view/ViewGroup;

    .line 378
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lez v6, :cond_3

    .line 379
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 380
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 381
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 382
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-lez v6, :cond_5

    .line 383
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    if-ltz v6, :cond_0

    .line 396
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    .end local v5    # "view":Landroid/view/View;
    :cond_3
    invoke-direct {p0, p1, p3}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->calculateDistanceY(Landroid/view/View;I)D

    move-result-wide v6

    double-to-int v4, v6

    .line 398
    .local v4, "spinnerDy":I
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshing:Z

    .line 400
    iget-boolean v6, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isConfirm:Z

    if-nez v6, :cond_4

    .line 401
    if-gez v4, :cond_6

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->canChildScrollUp()Z

    move-result v6

    if-nez v6, :cond_6

    .line 402
    const/4 v6, 0x0

    iput v6, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mCurrentAction:I

    .line 403
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isConfirm:Z

    .line 410
    :cond_4
    :goto_2
    neg-int v6, v4

    int-to-float v6, v6

    invoke-direct {p0, v6}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->moveSpinner(F)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->canChildScrollUp()Z

    move-result v6

    if-nez v6, :cond_7

    iget-boolean v6, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullRefreshEnable:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mTargetView:Landroid/view/View;

    .line 412
    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_7

    if-lez p3, :cond_7

    .line 414
    const/4 v6, 0x1

    aget v7, p4, v6

    add-int/2addr v7, p3

    aput v7, p4, v6

    goto/16 :goto_0

    .line 380
    .end local v4    # "spinnerDy":I
    .restart local v0    # "count":I
    .restart local v1    # "group":Landroid/view/ViewGroup;
    .restart local v2    # "i":I
    .restart local v5    # "view":Landroid/view/View;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 404
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    .end local v5    # "view":Landroid/view/View;
    .restart local v4    # "spinnerDy":I
    :cond_6
    if-lez v4, :cond_4

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->canChildScrollDown()Z

    move-result v6

    if-nez v6, :cond_4

    iget-boolean v6, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshing:Z

    if-nez v6, :cond_4

    .line 405
    const/4 v6, 0x1

    iput v6, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mCurrentAction:I

    .line 406
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isConfirm:Z

    goto :goto_2

    .line 415
    :cond_7
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->canChildScrollDown()Z

    move-result v6

    if-nez v6, :cond_8

    iget-boolean v6, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullLoadEnable:Z

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mTargetView:Landroid/view/View;

    .line 416
    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v6

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_8

    if-gez p3, :cond_8

    .line 418
    const/4 v6, 0x1

    aget v7, p4, v6

    add-int/2addr v7, p3

    aput v7, p4, v6

    goto/16 :goto_0

    .line 420
    :cond_8
    const/4 v6, 0x1

    aget v7, p4, v6

    add-int/2addr v7, v4

    aput v7, p4, v6

    goto/16 :goto_0
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v5, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mParentOffsetInWindow:[I

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->dispatchNestedScroll(IIII[I)Z

    .line 452
    :cond_0
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 341
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollingParentHelper:Lgj;

    invoke-virtual {v0, p1, p2, p3}, Lgj;->a(Landroid/view/View;Landroid/view/View;I)V

    .line 342
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    and-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->startNestedScroll(I)Z

    .line 344
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollInProgress:Z

    .line 346
    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshing:Z

    if-nez v1, :cond_0

    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 336
    .local v0, "result":Z
    :goto_0
    return v0

    .line 333
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 438
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollingParentHelper:Lgj;

    .line 3110
    const/4 v1, 0x0

    iput v1, v0, Lgj;->a:I

    .line 439
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->handlerAction()V

    .line 440
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollInProgress:Z

    .line 442
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->stopNestedScroll()V

    .line 444
    :cond_0
    return-void
.end method

.method public removeOnRefreshOffsetChangedListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$OnRefreshOffsetChangedListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$OnRefreshOffsetChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 763
    if-eqz p1, :cond_0

    .line 764
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshOffsetChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 766
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLoadingBgColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 836
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->footerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setBackgroundColor(I)V

    .line 837
    return-void
.end method

.method public setLoadingHeight(I)V
    .locals 2
    .param p1, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 827
    int-to-float v0, p1

    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->loadingViewHeight:F

    .line 828
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->loadingViewHeight:F

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->loadingViewFlowHeight:F

    .line 829
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 242
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollingChildHelper:Lgg;

    invoke-virtual {v0, p1}, Lgg;->a(Z)V

    .line 243
    return-void
.end method

.method public setOnLoadingListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnLoadingListener;)V
    .locals 0
    .param p1, "onLoadingListener"    # Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnLoadingListener;

    .prologue
    .line 747
    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->onLoadingListener:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnLoadingListener;

    .line 748
    return-void
.end method

.method public setOnRefreshListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnRefreshListener;)V
    .locals 0
    .param p1, "onRefreshListener"    # Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnRefreshListener;

    .prologue
    .line 751
    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->onRefreshListener:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnRefreshListener;

    .line 752
    return-void
.end method

.method public setPullLoadEnable(Z)V
    .locals 0
    .param p1, "mPullLoadEnable"    # Z

    .prologue
    .line 806
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullLoadEnable:Z

    .line 807
    return-void
.end method

.method public setPullRefreshEnable(Z)V
    .locals 0
    .param p1, "mPullRefreshEnable"    # Z

    .prologue
    .line 814
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullRefreshEnable:Z

    .line 815
    return-void
.end method

.method public setRefreshBgColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 832
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->headerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setBackgroundColor(I)V

    .line 833
    return-void
.end method

.method public setRefreshHeight(I)V
    .locals 2
    .param p1, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 822
    int-to-float v0, p1

    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->refreshViewHeight:F

    .line 823
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->refreshViewHeight:F

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->refreshViewFlowHeight:F

    .line 824
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 5
    .param p1, "axes"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 252
    iget-object v3, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollingChildHelper:Lgg;

    .line 1128
    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lgg;->a(II)Z

    move-result v2

    .line 253
    .local v2, "result":Z
    if-eqz v2, :cond_0

    .line 254
    iget-object v3, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollAcceptedParent:Landroid/view/ViewParent;

    if-nez v3, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 256
    .local v1, "parent":Landroid/view/ViewParent;
    move-object v0, p0

    .line 257
    .local v0, "child":Landroid/view/View;
    :goto_0
    if-eqz v1, :cond_0

    .line 258
    invoke-static {v1, v0, p0, p1}, Lgq;->a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 259
    iput-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollAcceptedParent:Landroid/view/ViewParent;

    .line 269
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_0
    return v2

    .line 262
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "parent":Landroid/view/ViewParent;
    :cond_1
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_2

    move-object v0, v1

    .line 263
    check-cast v0, Landroid/view/View;

    .line 265
    :cond_2
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0
.end method

.method public stopNestedScroll()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 274
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollingChildHelper:Lgg;

    .line 1174
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgg;->b(I)V

    .line 275
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollAcceptedParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollAcceptedParent:Landroid/view/ViewParent;

    .line 278
    :cond_0
    return-void
.end method
