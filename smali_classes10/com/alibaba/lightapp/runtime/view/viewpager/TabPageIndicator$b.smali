.class final Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$b;
.super Landroid/widget/TextView;
.source "TabPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;


# direct methods
.method public constructor <init>(Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$b;->b:Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;

    .line 410
    const/4 v0, 0x0

    sget v1, Lhdn$d;->vpiTabPageIndicatorStyle:I

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 411
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$b;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$b;
    .param p1, "x1"    # I

    .prologue
    .line 406
    iput p1, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$b;->a:I

    return p1
.end method


# virtual methods
.method public final onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 415
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 418
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$b;->b:Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->c(Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$b;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$b;->b:Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->c(Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 419
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$b;->b:Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->c(Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 422
    :cond_0
    return-void
.end method
