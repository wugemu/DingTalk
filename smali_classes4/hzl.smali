.class public final Lhzl;
.super Ljmi;
.source "GWXSurfaceView.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;


# instance fields
.field private b:Lcom/taobao/weex/ui/view/gesture/WXGesture;

.field private c:Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "component"    # Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;

    .prologue
    .line 23
    invoke-virtual {p2}, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljmi;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    iput-object p2, p0, Lhzl;->c:Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;

    .line 25
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lhzl;->c:Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;

    if-eqz v0, :cond_0

    .line 55
    const-string/jumbo v0, "start to send event in GWXSurfaceView"

    invoke-static {v0}, Ljmj;->c(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lhzl;->c:Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;

    invoke-virtual {v0}, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;->sendEvent()V

    .line 58
    :cond_0
    return-void
.end method

.method public final getGestureListener()Lcom/taobao/weex/ui/view/gesture/WXGesture;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lhzl;->b:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    return-object v0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 39
    invoke-super {p0, p1}, Ljmi;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 40
    .local v0, "result":Z
    iget-object v1, p0, Lhzl;->b:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Lhzl;->b:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    invoke-virtual {v1, p0, p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 43
    :cond_0
    return v0
.end method

.method public final registerGestureListener(Lcom/taobao/weex/ui/view/gesture/WXGesture;)V
    .locals 0
    .param p1, "wxGesture"    # Lcom/taobao/weex/ui/view/gesture/WXGesture;

    .prologue
    .line 29
    iput-object p1, p0, Lhzl;->b:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    .line 30
    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 49
    invoke-super {p0, p1}, Ljmi;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    :cond_0
    return-void
.end method
