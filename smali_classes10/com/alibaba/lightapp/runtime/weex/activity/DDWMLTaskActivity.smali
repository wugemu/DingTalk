.class public Lcom/alibaba/lightapp/runtime/weex/activity/DDWMLTaskActivity;
.super Lcom/taobao/windmill/bundle/alive/WMLActivity1;
.source "DDWMLTaskActivity.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/weex/activity/IDDWMLContext;


# instance fields
.field private mWMLActivityDelegate:Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/taobao/windmill/bundle/alive/WMLActivity1;-><init>()V

    .line 22
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v0, "f_lightapp_enable_init_wml"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-static {}, Lcom/alibaba/lightapp/runtime/weex/RuntimeWindmill;->init()V

    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/DDWMLTaskActivity;->mWMLActivityDelegate:Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 67
    invoke-super {p0, p1}, Lcom/taobao/windmill/bundle/alive/WMLActivity1;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getNuvaContext()Lcom/alibaba/lightapp/runtime/INuvaContext;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/DDWMLTaskActivity;->mWMLActivityDelegate:Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/taobao/windmill/bundle/alive/WMLActivity1;->onCreate(Landroid/os/Bundle;)V

    .line 30
    new-instance v0, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;-><init>(Lcom/taobao/windmill/bundle/WMLActivity;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/DDWMLTaskActivity;->mWMLActivityDelegate:Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;

    .line 31
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/DDWMLTaskActivity;->mWMLActivityDelegate:Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 32
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/DDWMLTaskActivity;->mWMLActivityDelegate:Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;->onDestroy()V

    .line 61
    invoke-super {p0}, Lcom/taobao/windmill/bundle/alive/WMLActivity1;->onDestroy()V

    .line 62
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/DDWMLTaskActivity;->mWMLActivityDelegate:Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/taobao/windmill/bundle/alive/WMLActivity1;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/DDWMLTaskActivity;->mWMLActivityDelegate:Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;->onPause()V

    .line 49
    invoke-super {p0}, Lcom/taobao/windmill/bundle/alive/WMLActivity1;->onPause()V

    .line 50
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/taobao/windmill/bundle/alive/WMLActivity1;->onResume()V

    .line 43
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/DDWMLTaskActivity;->mWMLActivityDelegate:Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;->onResume()V

    .line 44
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Lcom/taobao/windmill/bundle/alive/WMLActivity1;->onStart()V

    .line 37
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/DDWMLTaskActivity;->mWMLActivityDelegate:Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;->onStart()V

    .line 38
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/DDWMLTaskActivity;->mWMLActivityDelegate:Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;->onStop()V

    .line 55
    invoke-super {p0}, Lcom/taobao/windmill/bundle/alive/WMLActivity1;->onStop()V

    .line 56
    return-void
.end method
