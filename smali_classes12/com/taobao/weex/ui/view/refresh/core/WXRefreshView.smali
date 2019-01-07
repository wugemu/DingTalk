.class public Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;
.super Landroid/widget/FrameLayout;
.source "WXRefreshView.java"


# instance fields
.field private circleProgressBar:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

.field private linearLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setupViews()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setupViews()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setupViews()V

    .line 50
    return-void
.end method

.method static synthetic access$002(Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;)Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;
    .param p1, "x1"    # Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->circleProgressBar:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->linearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private setupViews()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, -0x1

    .line 53
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->linearLayout:Landroid/widget/LinearLayout;

    .line 54
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 57
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 58
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->linearLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 59
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    return-void
.end method


# virtual methods
.method public setContentGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->linearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 66
    :cond_0
    return-void
.end method

.method public setProgressBgColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->circleProgressBar:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->circleProgressBar:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->setBackgroundColor(I)V

    .line 103
    :cond_0
    return-void
.end method

.method public setProgressColor(I)V
    .locals 3
    .param p1, "color"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 111
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->circleProgressBar:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->circleProgressBar:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->setColorSchemeColors([I)V

    .line 114
    :cond_0
    return-void
.end method

.method public setProgressRotation(F)V
    .locals 1
    .param p1, "rotation"    # F

    .prologue
    .line 146
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->circleProgressBar:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->circleProgressBar:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->setProgressRotation(F)V

    .line 148
    :cond_0
    return-void
.end method

.method public setRefreshView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 74
    if-nez p1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 76
    :cond_0
    new-instance v0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView$1;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView$1;-><init>(Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;Landroid/view/View;)V

    invoke-static {v0}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setStartEndTrim(FF)V
    .locals 1
    .param p1, "startAngle"    # F
    .param p2, "endAngle"    # F

    .prologue
    .line 129
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->circleProgressBar:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->circleProgressBar:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->setStartEndTrim(FF)V

    .line 132
    :cond_0
    return-void
.end method

.method protected startAnimation()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->circleProgressBar:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->circleProgressBar:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->start()V

    .line 120
    :cond_0
    return-void
.end method

.method protected stopAnimation()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->circleProgressBar:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->circleProgressBar:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->stop()V

    .line 138
    :cond_0
    return-void
.end method
