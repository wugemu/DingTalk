.class final Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$1;
.super Ljava/lang/Object;
.source "ShimmerFrameLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->getLayoutListener()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;

    .prologue
    .line 668
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$1;->a:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 671
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$1;->a:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->a(Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;)Z

    move-result v0

    .line 672
    .local v0, "animationStarted":Z
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$1;->a:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->b(Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;)V

    .line 673
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$1;->a:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->c(Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 674
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$1;->a:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->b()V

    .line 676
    :cond_1
    return-void
.end method
