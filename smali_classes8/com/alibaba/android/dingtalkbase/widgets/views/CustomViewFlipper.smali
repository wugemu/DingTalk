.class public Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;
.super Landroid/widget/ViewFlipper;
.source "CustomViewFlipper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method


# virtual methods
.method public setOnViewChange(Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper$a;)V
    .locals 0
    .param p1, "onViewChange"    # Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper$a;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper$a;

    .line 55
    return-void
.end method

.method public showNext()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 39
    invoke-super {p0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 40
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper$a;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper$a;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->getDisplayedChild()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper$a;->a(I)V

    .line 43
    :cond_0
    return-void
.end method

.method public showPrevious()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 47
    invoke-super {p0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 48
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper$a;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper$a;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->getDisplayedChild()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper$a;->a(I)V

    .line 51
    :cond_0
    return-void
.end method
