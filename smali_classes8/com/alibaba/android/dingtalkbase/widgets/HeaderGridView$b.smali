.class public final Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$b;
.super Landroid/widget/FrameLayout;
.source "HeaderGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView;

    .line 180
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 181
    return-void
.end method


# virtual methods
.method protected final onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 185
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView;

    .line 186
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView;

    .line 187
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView;->getPaddingRight()I

    move-result v2

    sub-int v0, v1, v2

    .line 189
    .local v0, "targetWidth":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 188
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 190
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 191
    return-void
.end method
