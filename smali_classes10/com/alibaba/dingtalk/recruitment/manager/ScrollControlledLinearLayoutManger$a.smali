.class final Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger$a;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "ScrollControlledLinearLayoutManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger$a;->a:Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;

    .line 49
    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 50
    return-void
.end method


# virtual methods
.method public final calculateDtToFit(IIIII)I
    .locals 1
    .param p1, "viewStart"    # I
    .param p2, "viewEnd"    # I
    .param p3, "boxStart"    # I
    .param p4, "boxEnd"    # I
    .param p5, "snapPreference"    # I

    .prologue
    .line 64
    sub-int v0, p3, p1

    return v0
.end method

.method protected final calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 1
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger$a;->a:Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;->a(Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;)F

    move-result v0

    return v0
.end method

.method public final computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1
    .param p1, "targetPosition"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger$a;->a:Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;

    invoke-virtual {v0, p1}, Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method protected final getVerticalSnapPreference()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, -0x1

    return v0
.end method
