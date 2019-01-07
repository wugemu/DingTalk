.class final Lerb$2;
.super Ljava/lang/Object;
.source "FeedbackButtonPresenter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lerb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lerb;


# direct methods
.method constructor <init>(Lerb;)V
    .locals 0
    .param p1, "this$0"    # Lerb;

    .prologue
    .line 94
    iput-object p1, p0, Lerb$2;->a:Lerb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 98
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 99
    .local v1, "r":Landroid/graphics/Rect;
    iget-object v4, p0, Lerb$2;->a:Lerb;

    .line 1024
    iget-object v4, v4, Lerb;->d:Landroid/view/View;

    .line 99
    invoke-virtual {v4, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 100
    iget-object v4, p0, Lerb$2;->a:Lerb;

    .line 2024
    iget-object v4, v4, Lerb;->d:Landroid/view/View;

    .line 100
    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 101
    .local v2, "rootView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 102
    .local v3, "screenHeight":I
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, v4

    .line 104
    .local v0, "heightDifference":I
    iget-object v4, p0, Lerb$2;->a:Lerb;

    .line 3024
    iget-object v4, v4, Lerb;->a:Landroid/widget/ImageButton;

    .line 104
    if-eqz v4, :cond_0

    .line 105
    iget-object v4, p0, Lerb$2;->a:Lerb;

    .line 4024
    iget-object v4, v4, Lerb;->b:Landroid/widget/FrameLayout$LayoutParams;

    .line 105
    iget-object v5, p0, Lerb$2;->a:Lerb;

    .line 5024
    iget-object v5, v5, Lerb;->c:Landroid/app/Activity;

    .line 105
    const/high16 v6, 0x41f00000    # 30.0f

    invoke-static {v5, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    add-int/2addr v5, v0

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 106
    iget-object v4, p0, Lerb$2;->a:Lerb;

    .line 6024
    iget-object v4, v4, Lerb;->a:Landroid/widget/ImageButton;

    .line 106
    iget-object v5, p0, Lerb$2;->a:Lerb;

    .line 7024
    iget-object v5, v5, Lerb;->b:Landroid/widget/FrameLayout$LayoutParams;

    .line 106
    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    :cond_0
    return-void
.end method
