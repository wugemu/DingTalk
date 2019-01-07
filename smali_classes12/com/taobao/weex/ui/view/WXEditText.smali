.class public Lcom/taobao/weex/ui/view/WXEditText;
.super Landroid/widget/EditText;
.source "WXEditText.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;


# instance fields
.field private mAllowCopyPaste:Z

.field private mAllowDisableMovement:Z

.field private mLines:I

.field private wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 39
    iput v0, p0, Lcom/taobao/weex/ui/view/WXEditText;->mLines:I

    .line 40
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/WXEditText;->mAllowDisableMovement:Z

    .line 41
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/WXEditText;->mAllowCopyPaste:Z

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 46
    invoke-virtual {p0, v2}, Lcom/taobao/weex/ui/view/WXEditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-virtual {p0, v2}, Lcom/taobao/weex/ui/view/WXEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
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
    .line 90
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onSizeChanged(IIII)V

    .line 91
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXEditText;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXEditText;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v0

    .line 94
    .local v0, "contentH":I
    iget-boolean v1, p0, Lcom/taobao/weex/ui/view/WXEditText;->mAllowDisableMovement:Z

    if-eqz v1, :cond_1

    if-ge p2, v0, :cond_1

    .line 95
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/view/WXEditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 100
    .end local v0    # "contentH":I
    :cond_0
    :goto_0
    return-void

    .line 97
    .restart local v0    # "contentH":I
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXEditText;->getDefaultMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/view/WXEditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0
.end method

.method public onTextContextMenuItem(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXEditText;->mAllowCopyPaste:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

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

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 66
    .local v1, "result":Z
    iget-object v2, p0, Lcom/taobao/weex/ui/view/WXEditText;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-eqz v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/taobao/weex/ui/view/WXEditText;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    invoke-virtual {v2, p0, p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXEditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 71
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 85
    :cond_1
    :goto_0
    :pswitch_0
    return v1

    .line 74
    :pswitch_1
    iget v2, p0, Lcom/taobao/weex/ui/view/WXEditText;->mLines:I

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXEditText;->getLineCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 76
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 81
    :pswitch_2
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public registerGestureListener(Lcom/taobao/weex/ui/view/gesture/WXGesture;)V
    .locals 0
    .param p1, "wxGesture"    # Lcom/taobao/weex/ui/view/gesture/WXGesture;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXEditText;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    .line 55
    return-void
.end method

.method public setAllowCopyPaste(Z)V
    .locals 4
    .param p1, "allow"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x17

    .line 107
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXEditText;->mAllowCopyPaste:Z

    .line 108
    if-eqz p1, :cond_1

    .line 109
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/view/WXEditText;->setLongClickable(Z)V

    .line 110
    invoke-virtual {p0, v3}, Lcom/taobao/weex/ui/view/WXEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 111
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_0

    .line 112
    invoke-virtual {p0, v3}, Lcom/taobao/weex/ui/view/WXEditText;->setCustomInsertionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/view/WXEditText;->setLongClickable(Z)V

    .line 116
    new-instance v0, Lcom/taobao/weex/ui/view/WXEditText$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/view/WXEditText$1;-><init>(Lcom/taobao/weex/ui/view/WXEditText;)V

    .line 137
    .local v0, "callback":Landroid/view/ActionMode$Callback;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_2

    .line 138
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/WXEditText;->setCustomInsertionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 140
    :cond_2
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/WXEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    goto :goto_0
.end method

.method public setAllowDisableMovement(Z)V
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXEditText;->mAllowDisableMovement:Z

    .line 104
    return-void
.end method

.method public setLines(I)V
    .locals 0
    .param p1, "lines"    # I

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/widget/EditText;->setLines(I)V

    .line 60
    iput p1, p0, Lcom/taobao/weex/ui/view/WXEditText;->mLines:I

    .line 61
    return-void
.end method
