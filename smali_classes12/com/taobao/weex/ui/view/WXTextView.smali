.class public Lcom/taobao/weex/ui/view/WXTextView;
.super Landroid/view/View;
.source "WXTextView.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/IRenderResult;
.implements Lcom/taobao/weex/ui/view/IRenderStatus;
.implements Lcom/taobao/weex/ui/view/IWXTextView;
.implements Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/view/View;",
        "Lcom/taobao/weex/ui/view/IRenderResult",
        "<",
        "Lcom/taobao/weex/ui/component/WXText;",
        ">;",
        "Lcom/taobao/weex/ui/view/IRenderStatus",
        "<",
        "Lcom/taobao/weex/ui/component/WXText;",
        ">;",
        "Lcom/taobao/weex/ui/view/IWXTextView;",
        "Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;"
    }
.end annotation


# instance fields
.field private mIsLabelSet:Z

.field private mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/taobao/weex/ui/component/WXText;",
            ">;"
        }
    .end annotation
.end field

.field private textLayout:Landroid/text/Layout;

.field private wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/WXTextView;->mIsLabelSet:Z

    .line 52
    return-void
.end method


# virtual methods
.method public enableCopy(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 127
    if-eqz p1, :cond_0

    .line 128
    new-instance v0, Lcom/taobao/weex/ui/view/WXTextView$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/view/WXTextView$1;-><init>(Lcom/taobao/weex/ui/view/WXTextView;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/WXTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/WXTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0
.end method

.method public bridge synthetic getComponent()Lcom/taobao/weex/ui/component/WXComponent;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXTextView;->getComponent()Lcom/taobao/weex/ui/component/WXText;

    move-result-object v0

    return-object v0
.end method

.method public getComponent()Lcom/taobao/weex/ui/component/WXText;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXTextView;->mWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXTextView;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXText;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXTextView;->textLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextLayout()Landroid/text/Layout;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXTextView;->textLayout:Landroid/text/Layout;

    return-object v0
.end method

.method public bridge synthetic holdComponent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 0

    .prologue
    .line 42
    check-cast p1, Lcom/taobao/weex/ui/component/WXText;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/WXTextView;->holdComponent(Lcom/taobao/weex/ui/component/WXText;)V

    return-void
.end method

.method public holdComponent(Lcom/taobao/weex/ui/component/WXText;)V
    .locals 1
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXText;

    .prologue
    .line 117
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXTextView;->mWeakReference:Ljava/lang/ref/WeakReference;

    .line 118
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 57
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 58
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXTextView;->getTextLayout()Landroid/text/Layout;

    move-result-object v0

    .line 59
    .local v0, "layout":Landroid/text/Layout;
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXTextView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXTextView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 61
    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 64
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 69
    .local v0, "result":Z
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXTextView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXTextView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    invoke-virtual {v1, p0, p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 72
    :cond_0
    return v0
.end method

.method public registerGestureListener(Lcom/taobao/weex/ui/view/gesture/WXGesture;)V
    .locals 0
    .param p1, "wxGesture"    # Lcom/taobao/weex/ui/view/gesture/WXGesture;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXTextView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    .line 78
    return-void
.end method

.method public setAriaLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/WXTextView;->mIsLabelSet:Z

    .line 105
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/WXTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/WXTextView;->mIsLabelSet:Z

    .line 108
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXTextView;->textLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXTextView;->textLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/WXTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTextLayout(Landroid/text/Layout;)V
    .locals 2
    .param p1, "layout"    # Landroid/text/Layout;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 90
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXTextView;->textLayout:Landroid/text/Layout;

    .line 91
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/taobao/weex/ui/view/WXTextView;->mIsLabelSet:Z

    if-nez v1, :cond_0

    .line 92
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/view/WXTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXTextView;->mWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXTextView;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXText;

    .line 96
    .local v0, "wxText":Lcom/taobao/weex/ui/component/WXText;
    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXText;->readyToRender()V

    .line 100
    .end local v0    # "wxText":Lcom/taobao/weex/ui/component/WXText;
    :cond_1
    return-void
.end method
