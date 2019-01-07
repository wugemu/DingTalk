.class public final Ljug$a;
.super Landroid/view/View;
.source "StickyGridHeadersBaseAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ljug;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljug;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Ljug;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 385
    iput-object p1, p0, Ljug$a;->a:Ljug;

    .line 386
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 387
    return-void
.end method


# virtual methods
.method protected final onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 403
    iget-object v0, p0, Ljug$a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 405
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 406
    return-void
.end method

.method public final setMeasureTarget(Landroid/view/View;)V
    .locals 0
    .param p1, "lastViewSeen"    # Landroid/view/View;

    .prologue
    .line 398
    iput-object p1, p0, Ljug$a;->b:Landroid/view/View;

    .line 399
    return-void
.end method
