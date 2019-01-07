.class final Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler$OverlayView;
.super Lcom/taobao/weex/devtools/inspector/elements/android/DocumentHiddenView;
.source "AndroidDocumentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "OverlayView"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler$OverlayView;->this$1:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;

    .line 332
    invoke-direct {p0, p2}, Lcom/taobao/weex/devtools/inspector/elements/android/DocumentHiddenView;-><init>(Landroid/content/Context;)V

    .line 333
    return-void
.end method


# virtual methods
.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 337
    const v0, 0x40ffffff    # 7.9999995f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 338
    invoke-super {p0, p1}, Lcom/taobao/weex/devtools/inspector/elements/android/DocumentHiddenView;->onDraw(Landroid/graphics/Canvas;)V

    .line 339
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 343
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler$OverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 344
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler$OverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 345
    .local v0, "parent":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler$OverlayView;->this$1:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;

    invoke-static {v4}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;->access$700(Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;)Lcom/taobao/weex/devtools/common/Predicate;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/taobao/weex/devtools/common/android/ViewUtil;->hitTest(Landroid/view/View;FFLcom/taobao/weex/devtools/common/Predicate;)Landroid/view/View;

    move-result-object v1

    .line 347
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 348
    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler$OverlayView;->this$1:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;

    iget-object v2, v2, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;->this$0:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;

    invoke-static {v2}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->access$800(Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;)Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter;

    move-result-object v2

    const v3, 0x404040ff

    invoke-virtual {v2, v1, v3}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter;->setHighlightedView(Landroid/view/View;I)V

    .line 350
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 351
    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler$OverlayView;->this$1:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;

    iget-object v2, v2, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;->this$0:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;

    invoke-static {v2}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->access$100(Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;)Lcom/taobao/weex/devtools/inspector/elements/DocumentProviderListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 352
    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler$OverlayView;->this$1:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;

    iget-object v2, v2, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;->this$0:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;

    invoke-static {v2}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->access$100(Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;)Lcom/taobao/weex/devtools/inspector/elements/DocumentProviderListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/taobao/weex/devtools/inspector/elements/DocumentProviderListener;->onInspectRequested(Ljava/lang/Object;)V

    .line 358
    .end local v0    # "parent":Landroid/view/View;
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    return v5
.end method
