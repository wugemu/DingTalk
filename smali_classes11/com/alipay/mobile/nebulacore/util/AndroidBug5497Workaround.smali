.class public Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;
.super Ljava/lang/Object;
.source "AndroidBug5497Workaround.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5AndroidBug5497Workaround"


# instance fields
.field private frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mChildOfContent:Landroid/view/View;

.field private navigtionBarUtil:Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;

.field private statusBarHeight:I

.field private usableHeightPrevious:I


# direct methods
.method private constructor <init>(Landroid/app/Activity;Z)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isTransparent"    # Z

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v3, Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;

    invoke-direct {v3, p1}, Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->navigtionBarUtil:Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;

    .line 37
    const v3, 0x1020002

    invoke-virtual {p1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 38
    .local v0, "content":Landroid/widget/FrameLayout;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    .line 41
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "status_bar_height"

    const-string/jumbo v5, "dimen"

    const-string/jumbo v6, "android"

    .line 42
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 43
    .local v1, "resourceId":I
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->statusBarHeight:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v1    # "resourceId":I
    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround$1;

    invoke-direct {v4, p0, p2}, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround$1;-><init>(Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;Z)V

    .line 49
    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 59
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 60
    return-void

    .line 44
    :catch_0
    move-exception v2

    .line 45
    .local v2, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v3, "H5AndroidBug5497Workaround"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;
    .param p1, "x1"    # Z

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->possiblyResizeChildOfContent(Z)V

    return-void
.end method

.method public static assistActivity(Landroid/app/Activity;Z)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "isTransparent"    # Z

    .prologue
    .line 21
    :try_start_0
    new-instance v1, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;-><init>(Landroid/app/Activity;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v1, "H5AndroidBug5497Workaround"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private computeUsableHeight()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 104
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 105
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    return v1
.end method

.method private possiblyResizeChildOfContent(Z)V
    .locals 6
    .param p1, "isTransparent"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->computeUsableHeight()I

    move-result v1

    .line 64
    .local v1, "usableHeightNow":I
    iget v3, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->usableHeightPrevious:I

    if-eq v1, v3, :cond_1

    .line 65
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 66
    .local v2, "usableHeightSansKeyboard":I
    sub-int v0, v2, v1

    .line 68
    .local v0, "heightDifference":I
    const-string/jumbo v3, "H5AndroidBug5497Workaround"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "heightDifference "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " usableHeightSansKeyboard "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " statusBarHeight:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->statusBarHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " hasNavigationBar "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->navigtionBarUtil:Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;

    .line 72
    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;->hasNavigationBar()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " NavigationBarHeight "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->navigtionBarUtil:Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;

    .line 73
    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;->getNavigationBarHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 68
    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    div-int/lit8 v3, v2, 0x4

    if-le v0, v3, :cond_3

    .line 77
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5StatusBarUtils;->isSupport()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 78
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5StatusBarUtils;->isConfigSupport()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez p1, :cond_2

    .line 79
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    sub-int v4, v2, v0

    iget v5, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->statusBarHeight:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 97
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 98
    iput v1, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->usableHeightPrevious:I

    .line 100
    .end local v0    # "heightDifference":I
    .end local v2    # "usableHeightSansKeyboard":I
    :cond_1
    return-void

    .line 82
    .restart local v0    # "heightDifference":I
    .restart local v2    # "usableHeightSansKeyboard":I
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    sub-int v4, v2, v0

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 87
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5StatusBarUtils;->isSupport()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 88
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5StatusBarUtils;->isConfigSupport()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez p1, :cond_4

    .line 89
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 90
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->navigtionBarUtil:Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;->hasNavigationBar()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->navigtionBarUtil:Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;->getNavigationBarHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 94
    :cond_4
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->statusBarHeight:I

    sub-int v4, v2, v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0
.end method
