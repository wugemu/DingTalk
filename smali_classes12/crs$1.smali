.class final Lcrs$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "EmotionToucher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcrs;


# direct methods
.method constructor <init>(Lcrs;)V
    .locals 0
    .param p1, "this$0"    # Lcrs;

    .prologue
    .line 55
    iput-object p1, p0, Lcrs$1;->a:Lcrs;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 73
    iget-object v0, p0, Lcrs$1;->a:Lcrs;

    invoke-static {v0}, Lcrs;->b(Lcrs;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcrs$1;->a:Lcrs;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcrs;->a(Lcrs;Z)Z

    .line 75
    iget-object v0, p0, Lcrs$1;->a:Lcrs;

    invoke-static {v0}, Lcrs;->a(Lcrs;)Lcrs$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcrs$1;->a:Lcrs;

    invoke-static {v0}, Lcrs;->a(Lcrs;)Lcrs$a;

    move-result-object v0

    invoke-interface {v0}, Lcrs$a;->a()V

    .line 80
    :cond_0
    return-void
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 63
    iget-object v0, p0, Lcrs$1;->a:Lcrs;

    invoke-static {v0}, Lcrs;->a(Lcrs;)Lcrs$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcrs$1;->a:Lcrs;

    invoke-static {v0}, Lcrs;->a(Lcrs;)Lcrs$a;

    move-result-object v0

    iget-object v1, p0, Lcrs$1;->a:Lcrs;

    iget-object v1, v1, Lcrs;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Lcrs$a;->onClick(Landroid/view/View;)V

    .line 66
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
