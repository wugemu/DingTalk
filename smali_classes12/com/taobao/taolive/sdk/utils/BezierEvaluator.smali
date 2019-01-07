.class public Lcom/taobao/taolive/sdk/utils/BezierEvaluator;
.super Ljava/lang/Object;
.source "BezierEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;",
        ">;"
    }
.end annotation


# instance fields
.field private mControl:Landroid/graphics/PointF;

.field private mObject:Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;


# direct methods
.method public constructor <init>(Landroid/graphics/PointF;)V
    .locals 0
    .param p1, "control"    # Landroid/graphics/PointF;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/taobao/taolive/sdk/utils/BezierEvaluator;->mControl:Landroid/graphics/PointF;

    .line 15
    return-void
.end method


# virtual methods
.method public evaluate(FLcom/alibaba/android/dingtalk/live/widget/AnimatorObject;Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;)Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;
    .locals 6
    .param p1, "time"    # F
    .param p2, "startValue"    # Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;
    .param p3, "endValue"    # Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 19
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, p1

    .line 20
    .local v0, "timeLeft":F
    iget-object v1, p0, Lcom/taobao/taolive/sdk/utils/BezierEvaluator;->mObject:Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;-><init>()V

    iput-object v1, p0, Lcom/taobao/taolive/sdk/utils/BezierEvaluator;->mObject:Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/taobao/taolive/sdk/utils/BezierEvaluator;->mObject:Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;

    iput v0, v1, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->alpha:F

    .line 25
    iget-object v1, p0, Lcom/taobao/taolive/sdk/utils/BezierEvaluator;->mObject:Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;

    mul-float v2, v0, v0

    iget v3, p2, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->x:F

    mul-float/2addr v2, v3

    mul-float v3, v5, v0

    mul-float/2addr v3, p1

    iget-object v4, p0, Lcom/taobao/taolive/sdk/utils/BezierEvaluator;->mControl:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    mul-float v3, p1, p1

    iget v4, p3, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->x:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->x:F

    .line 29
    iget-object v1, p0, Lcom/taobao/taolive/sdk/utils/BezierEvaluator;->mObject:Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;

    mul-float v2, v0, v0

    iget v3, p2, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->y:F

    mul-float/2addr v2, v3

    mul-float v3, v5, v0

    mul-float/2addr v3, p1

    iget-object v4, p0, Lcom/taobao/taolive/sdk/utils/BezierEvaluator;->mControl:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    mul-float v3, p1, p1

    iget v4, p3, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->y:F

    .line 32
    iget-object v1, p0, Lcom/taobao/taolive/sdk/utils/BezierEvaluator;->mObject:Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;

    return-object v1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    check-cast p2, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;

    check-cast p3, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/taolive/sdk/utils/BezierEvaluator;->evaluate(FLcom/alibaba/android/dingtalk/live/widget/AnimatorObject;Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;)Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;

    move-result-object v0

    return-object v0
.end method
