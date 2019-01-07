.class final Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DingFloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton$2;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 376
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton$2;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    sget v2, Laxp$f;->ding_fab_label:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;

    .line 377
    .local v0, "label":Lcom/alibaba/android/ding/widget/floatingmenu/Label;
    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->b()V

    .line 380
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton$2;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->b()V

    .line 381
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 386
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton$2;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    sget v2, Laxp$f;->ding_fab_label:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;

    .line 387
    .local v0, "label":Lcom/alibaba/android/ding/widget/floatingmenu/Label;
    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->c()V

    .line 390
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton$2;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->c()V

    .line 391
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method
