.class final Lfuf$1;
.super Ljava/lang/Object;
.source "CenterTopAndBottomStyle.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfuf;->a(Lfuc;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lfuc;

.field final synthetic c:Lfuf;


# direct methods
.method constructor <init>(Lfuf;Landroid/view/ViewGroup;Lfuc;)V
    .locals 0
    .param p1, "this$0"    # Lfuf;

    .prologue
    .line 50
    iput-object p1, p0, Lfuf$1;->c:Lfuf;

    iput-object p2, p0, Lfuf$1;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lfuf$1;->b:Lfuc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 53
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    .line 54
    iget-object v3, p0, Lfuf$1;->c:Lfuf;

    iget-object v3, v3, Lfuf;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 58
    :goto_0
    iget-object v3, p0, Lfuf$1;->a:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .line 59
    .local v1, "margin":I
    iget-object v3, p0, Lfuf$1;->c:Lfuf;

    iget-object v3, v3, Lfuf;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 60
    .local v2, "topParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lfuf$1;->b:Lfuc;

    iget v3, v3, Lfuc;->c:I

    iget-object v4, p0, Lfuf$1;->b:Lfuc;

    iget v4, v4, Lfuc;->a:I

    iget-object v5, p0, Lfuf$1;->c:Lfuf;

    iget-object v5, v5, Lfuf;->c:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 61
    iget-object v3, p0, Lfuf$1;->b:Lfuc;

    iget v3, v3, Lfuc;->d:I

    iget-object v4, p0, Lfuf$1;->c:Lfuf;

    iget-object v4, v4, Lfuf;->c:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lfuf$1;->c:Lfuf;

    iget v4, v4, Lfuf;->a:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 63
    iget-object v3, p0, Lfuf$1;->c:Lfuf;

    iget-object v3, v3, Lfuf;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 64
    .local v0, "decoParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lfuf$1;->b:Lfuc;

    iget v3, v3, Lfuc;->c:I

    iget-object v4, p0, Lfuf$1;->b:Lfuc;

    iget v4, v4, Lfuc;->a:I

    iget-object v5, p0, Lfuf$1;->c:Lfuf;

    iget-object v5, v5, Lfuf;->b:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 65
    iget-object v3, p0, Lfuf$1;->b:Lfuc;

    iget v3, v3, Lfuc;->d:I

    iget-object v4, p0, Lfuf$1;->b:Lfuc;

    iget v4, v4, Lfuc;->b:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lfuf$1;->c:Lfuf;

    iget v4, v4, Lfuf;->a:I

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 66
    iget-object v3, p0, Lfuf$1;->c:Lfuf;

    iget-object v3, v3, Lfuf;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 68
    iget-object v3, p0, Lfuf$1;->c:Lfuf;

    iget-object v3, v3, Lfuf;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lfuf$1$1;

    invoke-direct {v4, p0}, Lfuf$1$1;-><init>(Lfuf$1;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 80
    return-void

    .line 56
    .end local v0    # "decoParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "margin":I
    .end local v2    # "topParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v3, p0, Lfuf$1;->c:Lfuf;

    iget-object v3, v3, Lfuf;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto/16 :goto_0
.end method
