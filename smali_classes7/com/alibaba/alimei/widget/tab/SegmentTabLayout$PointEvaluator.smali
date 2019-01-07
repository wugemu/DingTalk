.class Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$PointEvaluator;
.super Ljava/lang/Object;
.source "SegmentTabLayout.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PointEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;

    .prologue
    .line 718
    iput-object p1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$PointEvaluator;->this$0:Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;)Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;
    .locals 6
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;
    .param p3, "endValue"    # Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 721
    iget v3, p2, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;->left:F

    iget v4, p3, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;->left:F

    iget v5, p2, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;->left:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float v0, v3, v4

    .line 722
    .local v0, "left":F
    iget v3, p2, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;->right:F

    iget v4, p3, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;->right:F

    iget v5, p2, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;->right:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float v2, v3, v4

    .line 723
    .local v2, "right":F
    new-instance v1, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;

    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$PointEvaluator;->this$0:Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;

    invoke-direct {v1, v3}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;-><init>(Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;)V

    .line 724
    .local v1, "point":Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;
    iput v0, v1, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;->left:F

    .line 725
    iput v2, v1, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;->right:F

    .line 726
    return-object v1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 718
    check-cast p2, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;

    check-cast p3, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$PointEvaluator;->evaluate(FLcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;)Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;

    move-result-object v0

    return-object v0
.end method
