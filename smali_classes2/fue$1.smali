.class final Lfue$1;
.super Ljava/lang/Object;
.source "CenterBottomStyle.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfue;->a(Lfuc;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lfuc;

.field final synthetic c:Lfue;


# direct methods
.method constructor <init>(Lfue;Landroid/view/ViewGroup;Lfuc;)V
    .locals 0
    .param p1, "this$0"    # Lfue;

    .prologue
    .line 44
    iput-object p1, p0, Lfue$1;->c:Lfue;

    iput-object p2, p0, Lfue$1;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lfue$1;->b:Lfuc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 47
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 48
    iget-object v2, p0, Lfue$1;->c:Lfue;

    iget-object v2, v2, Lfue;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 52
    :goto_0
    iget-object v2, p0, Lfue$1;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .line 53
    .local v1, "margin":I
    iget-object v2, p0, Lfue$1;->c:Lfue;

    iget-object v2, v2, Lfue;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 54
    .local v0, "childParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lfue$1;->b:Lfuc;

    iget v2, v2, Lfuc;->c:I

    iget-object v3, p0, Lfue$1;->b:Lfuc;

    iget v3, v3, Lfuc;->a:I

    iget-object v4, p0, Lfue$1;->c:Lfue;

    iget-object v4, v4, Lfue;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 55
    iget-object v2, p0, Lfue$1;->b:Lfuc;

    iget v2, v2, Lfuc;->d:I

    iget-object v3, p0, Lfue$1;->b:Lfuc;

    iget v3, v3, Lfuc;->b:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lfue$1;->c:Lfue;

    iget v3, v3, Lfue;->a:I

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 56
    iget-object v2, p0, Lfue$1;->c:Lfue;

    iget-object v2, v2, Lfue;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 58
    iget-object v2, p0, Lfue$1;->c:Lfue;

    iget-object v2, v2, Lfue;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lfue$1$1;

    invoke-direct {v3, p0}, Lfue$1$1;-><init>(Lfue$1;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 69
    return-void

    .line 50
    .end local v0    # "childParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "margin":I
    :cond_0
    iget-object v2, p0, Lfue$1;->c:Lfue;

    iget-object v2, v2, Lfue;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
