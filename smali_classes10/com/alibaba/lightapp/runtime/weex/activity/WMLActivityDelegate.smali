.class public Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;
.super Ljava/lang/Object;
.source "WMLActivityDelegate.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/INuvaContext;


# instance fields
.field private mActivity:Lcom/taobao/windmill/bundle/WMLActivity;

.field private mNavigationModel:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

.field private mWxAnalyzerDelegate:Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;


# direct methods
.method public constructor <init>(Lcom/taobao/windmill/bundle/WMLActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/taobao/windmill/bundle/WMLActivity;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1;-><init>(Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;->mNavigationModel:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    .line 28
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;->mActivity:Lcom/taobao/windmill/bundle/WMLActivity;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;)Lcom/taobao/windmill/bundle/WMLActivity;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;->mActivity:Lcom/taobao/windmill/bundle/WMLActivity;

    return-object v0
.end method

.method private enableWXAnalyzer()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 83
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public consumeMessage(J)V
    .locals 0
    .param p1, "mid"    # J

    .prologue
    .line 115
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;->enableWXAnalyzer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;->mWxAnalyzerDelegate:Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;

    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->onReceiveTouchEvent(Landroid/view/MotionEvent;)V

    .line 72
    :cond_0
    return-void
.end method

.method public fetchMessage(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lhdi$b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentNavId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;->enableWXAnalyzer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;->mActivity:Lcom/taobao/windmill/bundle/WMLActivity;

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;->mWxAnalyzerDelegate:Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;

    .line 34
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;->mWxAnalyzerDelegate:Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->onCreate()V

    .line 36
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;->enableWXAnalyzer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;->mWxAnalyzerDelegate:Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->onDestroy()V

    .line 66
    :cond_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;->enableWXAnalyzer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;->mWxAnalyzerDelegate:Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 78
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;->enableWXAnalyzer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;->mWxAnalyzerDelegate:Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->onPause()V

    .line 54
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;->enableWXAnalyzer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;->mWxAnalyzerDelegate:Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->onResume()V

    .line 48
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;->enableWXAnalyzer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;->mWxAnalyzerDelegate:Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->onStart()V

    .line 42
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;->enableWXAnalyzer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;->mWxAnalyzerDelegate:Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->onStop()V

    .line 60
    :cond_0
    return-void
.end method

.method public postMessage(Ljava/util/List;Lhdi$b;)V
    .locals 0
    .param p2, "message"    # Lhdi$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lhdi$b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "to":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public provideDelegateModel(Ljava/lang/Class;)Lcom/alibaba/lightapp/runtime/Component$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/lightapp/runtime/Component$a;",
            ">;)",
            "Lcom/alibaba/lightapp/runtime/Component$a;"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/lightapp/runtime/Component$a;>;"
    const-class v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;->mNavigationModel:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    .line 93
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public triggerMessage()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method
