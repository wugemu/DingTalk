.class public Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;
.super Landroid/widget/FrameLayout;
.source "WMLAppLoadingFrame.java"

# interfaces
.implements Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFourBall:Landroid/widget/ImageView;

.field private mFourBallAnimator:Landroid/animation/ObjectAnimator;

.field private mLogo:Ljava/lang/String;

.field private mLogoView:Landroid/widget/ImageView;

.field private mName:Ljava/lang/String;

.field private navBar:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->init(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->init(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->init(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->mLogoView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->mFourBall:Landroid/widget/ImageView;

    return-object v0
.end method

.method private loadLogo(Ljava/lang/String;)V
    .locals 1
    .param p1, "logoUrl"    # Ljava/lang/String;

    .prologue
    .line 110
    new-instance v0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame$1;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame$1;-><init>(Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;)V

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->loadImage(Ljava/lang/String;Lioi;)V

    .line 119
    return-void
.end method

.method private startLoadingAnimation()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->mFourBallAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->mFourBall:Landroid/widget/ImageView;

    const-string/jumbo v1, "rotation"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->mFourBallAnimator:Landroid/animation/ObjectAnimator;

    .line 82
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->mFourBallAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 83
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->mFourBallAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 84
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->mFourBallAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 85
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->mFourBallAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 87
    :cond_0
    return-void

    .line 81
    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 91
    return-object p0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 133
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->mFourBallAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->mFourBallAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->mFourBallAnimator:Landroid/animation/ObjectAnimator;

    .line 138
    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 54
    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->mActivity:Landroid/app/Activity;

    .line 55
    sget v2, Lhdn$i;->activity_miniapp_loading:I

    invoke-static {p1, v2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 57
    sget v2, Lhdn$h;->iv_ding_logo:I

    invoke-virtual {p0, v2}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->mLogoView:Landroid/widget/ImageView;

    .line 58
    sget v2, Lhdn$h;->iv_four_ball:I

    invoke-virtual {p0, v2}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->mFourBall:Landroid/widget/ImageView;

    .line 59
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->mFourBall:Landroid/widget/ImageView;

    sget v3, Lhdn$g;->four_ball:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 61
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->mFourBall:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setRotation(F)V

    .line 62
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->mFourBall:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 63
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->mFourBall:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 64
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 65
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 67
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljrd;->a(Landroid/app/Activity;Z)Z

    .line 68
    new-instance v2, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->navBar:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    .line 69
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/weex/util/ScreenUtil;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result v0

    .line 70
    .local v0, "statusBarHeight":I
    if-nez v0, :cond_0

    .line 71
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->mActivity:Landroid/app/Activity;

    const/high16 v3, 0x41c80000    # 25.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->navBar:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5, v0, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 74
    sget v2, Lhdn$h;->nav_container:I

    invoke-virtual {p0, v2}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 75
    .local v1, "vg":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->navBar:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 76
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->startLoadingAnimation()V

    .line 77
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public onRenderSuccess()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public setMode(Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt$LoadingType;)V
    .locals 0
    .param p1, "loadingType"    # Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt$LoadingType;

    .prologue
    .line 153
    return-void
.end method

.method public show(Lcom/taobao/windmill/bundle/container/core/AppCodeModel;)V
    .locals 2
    .param p1, "appCodeModel"    # Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->setVisibility(I)V

    .line 98
    invoke-virtual {p1}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppLogo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p1}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppLogo()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->loadLogo(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppLogo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->mLogo:Ljava/lang/String;

    .line 103
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->navBar:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    invoke-virtual {p1}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->setTitle(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->mName:Ljava/lang/String;

    .line 107
    :cond_1
    return-void
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "logoUrl"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->mLogo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->loadLogo(Ljava/lang/String;)V

    .line 126
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->navBar:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    invoke-virtual {v0, p2}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->setTitle(Ljava/lang/String;)V

    .line 129
    :cond_1
    return-void
.end method
