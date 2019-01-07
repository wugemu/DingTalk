.class final Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TeleConfCustomFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 102
    invoke-static {}, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onDoubleClick"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->a(Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;)Levr;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->a(Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;)Levr;

    move-result-object v0

    invoke-interface {v0}, Levr;->a()V

    .line 106
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 111
    invoke-static {}, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onSingleClick"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->a(Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;)Levr;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->a(Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;)Levr;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;

    invoke-interface {v0, v1}, Levr;->onClick(Landroid/view/View;)V

    .line 115
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
