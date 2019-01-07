.class public Lcom/taobao/weex/ui/view/WXVideoView;
.super Landroid/widget/VideoView;
.source "WXVideoView.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;,
        Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;
    }
.end annotation


# instance fields
.field private mVideoPauseListener:Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;

.field private wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 50
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/widget/VideoView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 64
    .local v0, "result":Z
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXVideoView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXVideoView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    invoke-virtual {v1, p0, p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 67
    :cond_0
    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/widget/VideoView;->pause()V

    .line 81
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView;->mVideoPauseListener:Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView;->mVideoPauseListener:Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;

    invoke-interface {v0}, Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;->onPause()V

    .line 84
    :cond_0
    return-void
.end method

.method public registerGestureListener(Lcom/taobao/weex/ui/view/gesture/WXGesture;)V
    .locals 0
    .param p1, "wxGesture"    # Lcom/taobao/weex/ui/view/gesture/WXGesture;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXVideoView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    .line 55
    return-void
.end method

.method public setOnVideoPauseListener(Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXVideoView;->mVideoPauseListener:Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;

    .line 59
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/widget/VideoView;->start()V

    .line 73
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView;->mVideoPauseListener:Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView;->mVideoPauseListener:Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;

    invoke-interface {v0}, Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;->onStart()V

    .line 76
    :cond_0
    return-void
.end method
