.class public Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;
.super Landroid/widget/RelativeLayout;
.source "H5FragmentRootView.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mEnableNewAdjustInput:Z

.field private mNeedRestoreWindowInsets:Z

.field private mStatusBarHeight:I

.field private mWindowInsetBottom:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const-string/jumbo v0, "H5FragmentRootView@"

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->TAG:Ljava/lang/String;

    .line 29
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->mEnableNewAdjustInput:Z

    .line 31
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->mNeedRestoreWindowInsets:Z

    .line 33
    iput v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->mWindowInsetBottom:I

    .line 35
    iput v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->mStatusBarHeight:I

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const-string/jumbo v0, "H5FragmentRootView@"

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->TAG:Ljava/lang/String;

    .line 29
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->mEnableNewAdjustInput:Z

    .line 31
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->mNeedRestoreWindowInsets:Z

    .line 33
    iput v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->mWindowInsetBottom:I

    .line 35
    iput v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->mStatusBarHeight:I

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const-string/jumbo v0, "H5FragmentRootView@"

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->TAG:Ljava/lang/String;

    .line 29
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->mEnableNewAdjustInput:Z

    .line 31
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->mNeedRestoreWindowInsets:Z

    .line 33
    iput v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->mWindowInsetBottom:I

    .line 35
    iput v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->mStatusBarHeight:I

    .line 47
    return-void
.end method

.method private requestApplyInsetsCompat()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->requestApplyInsets()V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->requestFitSystemWindows()V

    goto :goto_0
.end method


# virtual methods
.method public init(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 50
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->TAG:Ljava/lang/String;

    .line 51
    const-string/jumbo v7, "fullscreen"

    invoke-static {p2, v7, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 53
    .local v0, "isFullScreen":Z
    if-eqz v0, :cond_2

    .line 54
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "disable mEnableNewAdjustInput by fullScreen."

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p0

    .line 61
    .end local p0    # "this":Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;
    :goto_0
    iput-boolean v5, v2, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->mEnableNewAdjustInput:Z

    .line 66
    :cond_0
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "mEnableNewAdjustInput: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->mEnableNewAdjustInput:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-boolean v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->mEnableNewAdjustInput:Z

    if-eqz v5, :cond_1

    .line 72
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5StatusBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v5

    iput v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->mStatusBarHeight:I

    .line 73
    invoke-virtual {p0, v6}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->setFitsSystemWindows(Z)V

    .line 74
    instance-of v5, p1, Landroid/app/Activity;

    if-eqz v5, :cond_1

    .line 75
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 76
    .local v4, "window":Landroid/view/Window;
    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 79
    .end local v4    # "window":Landroid/view/Window;
    :cond_1
    return-void

    .line 57
    .restart local p0    # "this":Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;
    .restart local p1    # "context":Landroid/content/Context;
    :cond_2
    const-class v7, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 58
    .local v1, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v1, :cond_0

    .line 59
    const-string/jumbo v7, "h5_enableNewAdjustInput"

    invoke-interface {v1, v7}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 61
    const-string/jumbo v7, "NO"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    move v5, v6

    move-object v2, p0

    goto :goto_0

    :cond_3
    move-object v2, p0

    .end local p0    # "this":Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;
    .local v2, "this":Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;
    goto :goto_0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 8
    .param p1, "insets"    # Landroid/view/WindowInsets;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 126
    iget-boolean v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->mEnableNewAdjustInput:Z

    if-nez v5, :cond_0

    .line 127
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v5

    .line 142
    :goto_0
    return-object v5

    .line 130
    :cond_0
    move-object v0, p1

    .line 131
    .local v0, "afterTransform":Landroid/view/WindowInsets;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-le v5, v6, :cond_2

    .line 133
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v5

    iget v6, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->mStatusBarHeight:I

    sub-int v4, v5, v6

    .line 134
    .local v4, "top":I
    if-gez v4, :cond_1

    const/4 v4, 0x0

    .line 135
    :cond_1
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    .line 136
    .local v2, "left":I
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    .line 137
    .local v3, "right":I
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    .line 138
    .local v1, "bottom":I
    iput v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->mWindowInsetBottom:I

    .line 139
    invoke-virtual {p1, v2, v4, v3, v1}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    .line 141
    .end local v1    # "bottom":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    .end local v4    # "top":I
    :cond_2
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "onApplyWindowInsets, before: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", after: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v5

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 87
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 88
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->mEnableNewAdjustInput:Z

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onAttachedToWindow mNeedRestoreWindowInsets: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->mNeedRestoreWindowInsets:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->mNeedRestoreWindowInsets:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->requestApplyInsetsCompat()V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->mNeedRestoreWindowInsets:Z

    .line 95
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 99
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 100
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->mEnableNewAdjustInput:Z

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onDetachedFromWindow mWindowInsetBottom: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->mWindowInsetBottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->mWindowInsetBottom:I

    if-lez v0, :cond_0

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->mNeedRestoreWindowInsets:Z

    .line 106
    :cond_0
    return-void
.end method
