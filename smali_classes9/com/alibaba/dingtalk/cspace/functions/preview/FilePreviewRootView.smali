.class public Lcom/alibaba/dingtalk/cspace/functions/preview/FilePreviewRootView;
.super Landroid/widget/RelativeLayout;
.source "FilePreviewRootView.java"


# instance fields
.field private a:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/dingtalk/cspace/functions/preview/FilePreviewRootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/dingtalk/cspace/functions/preview/FilePreviewRootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/preview/FilePreviewRootView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lfzs$c;->uidic_global_color_transparent:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/functions/preview/FilePreviewRootView;->setBackgroundColor(I)V

    .line 35
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/preview/FilePreviewRootView;->a:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/preview/FilePreviewRootView;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 43
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setGestureDetector(Landroid/view/GestureDetector;)V
    .locals 0
    .param p1, "gestureDetector"    # Landroid/view/GestureDetector;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/preview/FilePreviewRootView;->a:Landroid/view/GestureDetector;

    .line 48
    return-void
.end method
