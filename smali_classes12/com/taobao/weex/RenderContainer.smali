.class public Lcom/taobao/weex/RenderContainer;
.super Landroid/widget/FrameLayout;
.source "RenderContainer.java"

# interfaces
.implements Lcom/taobao/weex/WeexFrameRateControl$VSyncListener;


# instance fields
.field private mFrameRateControl:Lcom/taobao/weex/WeexFrameRateControl;

.field private mHasConsumeEvent:Z

.field private mSDKInstance:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/taobao/weex/WXSDKInstance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/weex/RenderContainer;->mHasConsumeEvent:Z

    .line 43
    new-instance v0, Lcom/taobao/weex/WeexFrameRateControl;

    invoke-direct {v0, p0}, Lcom/taobao/weex/WeexFrameRateControl;-><init>(Lcom/taobao/weex/WeexFrameRateControl$VSyncListener;)V

    iput-object v0, p0, Lcom/taobao/weex/RenderContainer;->mFrameRateControl:Lcom/taobao/weex/WeexFrameRateControl;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/weex/RenderContainer;->mHasConsumeEvent:Z

    .line 48
    new-instance v0, Lcom/taobao/weex/WeexFrameRateControl;

    invoke-direct {v0, p0}, Lcom/taobao/weex/WeexFrameRateControl;-><init>(Lcom/taobao/weex/WeexFrameRateControl$VSyncListener;)V

    iput-object v0, p0, Lcom/taobao/weex/RenderContainer;->mFrameRateControl:Lcom/taobao/weex/WeexFrameRateControl;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/weex/RenderContainer;->mHasConsumeEvent:Z

    .line 53
    new-instance v0, Lcom/taobao/weex/WeexFrameRateControl;

    invoke-direct {v0, p0}, Lcom/taobao/weex/WeexFrameRateControl;-><init>(Lcom/taobao/weex/WeexFrameRateControl$VSyncListener;)V

    iput-object v0, p0, Lcom/taobao/weex/RenderContainer;->mFrameRateControl:Lcom/taobao/weex/WeexFrameRateControl;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/weex/RenderContainer;->mHasConsumeEvent:Z

    .line 59
    new-instance v0, Lcom/taobao/weex/WeexFrameRateControl;

    invoke-direct {v0, p0}, Lcom/taobao/weex/WeexFrameRateControl;-><init>(Lcom/taobao/weex/WeexFrameRateControl$VSyncListener;)V

    iput-object v0, p0, Lcom/taobao/weex/RenderContainer;->mFrameRateControl:Lcom/taobao/weex/WeexFrameRateControl;

    .line 60
    return-void
.end method


# virtual methods
.method public OnVSync()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/taobao/weex/RenderContainer;->mSDKInstance:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/RenderContainer;->mSDKInstance:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/taobao/weex/RenderContainer;->mSDKInstance:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->OnVSync()V

    .line 110
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/weex/RenderContainer;->mHasConsumeEvent:Z

    .line 115
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchWindowVisibilityChanged(I)V

    .line 94
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/taobao/weex/RenderContainer;->mFrameRateControl:Lcom/taobao/weex/WeexFrameRateControl;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/taobao/weex/RenderContainer;->mFrameRateControl:Lcom/taobao/weex/WeexFrameRateControl;

    invoke-virtual {v0}, Lcom/taobao/weex/WeexFrameRateControl;->stop()V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    if-nez p1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/taobao/weex/RenderContainer;->mFrameRateControl:Lcom/taobao/weex/WeexFrameRateControl;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/taobao/weex/RenderContainer;->mFrameRateControl:Lcom/taobao/weex/WeexFrameRateControl;

    invoke-virtual {v0}, Lcom/taobao/weex/WeexFrameRateControl;->start()V

    goto :goto_0
.end method

.method public hasConsumeEvent()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/taobao/weex/RenderContainer;->mHasConsumeEvent:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 79
    iget-object v0, p0, Lcom/taobao/weex/RenderContainer;->mFrameRateControl:Lcom/taobao/weex/WeexFrameRateControl;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/taobao/weex/RenderContainer;->mFrameRateControl:Lcom/taobao/weex/WeexFrameRateControl;

    invoke-virtual {v0}, Lcom/taobao/weex/WeexFrameRateControl;->start()V

    .line 82
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 87
    iget-object v0, p0, Lcom/taobao/weex/RenderContainer;->mFrameRateControl:Lcom/taobao/weex/WeexFrameRateControl;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/taobao/weex/RenderContainer;->mFrameRateControl:Lcom/taobao/weex/WeexFrameRateControl;

    invoke-virtual {v0}, Lcom/taobao/weex/WeexFrameRateControl;->stop()V

    .line 90
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 70
    iget-object v1, p0, Lcom/taobao/weex/RenderContainer;->mSDKInstance:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/weex/RenderContainer;->mSDKInstance:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/WXSDKInstance;

    .local v0, "instance":Lcom/taobao/weex/WXSDKInstance;
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/WXSDKInstance;->setSize(II)V

    .line 74
    .end local v0    # "instance":Lcom/taobao/weex/WXSDKInstance;
    :cond_0
    return-void
.end method

.method public setSDKInstance(Lcom/taobao/weex/WXSDKInstance;)V
    .locals 1
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;

    .prologue
    .line 63
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taobao/weex/RenderContainer;->mSDKInstance:Ljava/lang/ref/WeakReference;

    .line 64
    return-void
.end method
