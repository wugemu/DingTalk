.class public final Lbys;
.super Ljava/lang/Object;
.source "RocketEvaluator.java"

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
.field private a:Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 8
    check-cast p2, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;

    check-cast p3, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;

    .line 1014
    iget-object v0, p0, Lbys;->a:Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;

    if-nez v0, :cond_0

    .line 1015
    new-instance v0, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;-><init>()V

    iput-object v0, p0, Lbys;->a:Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;

    .line 1018
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 1019
    iget-object v0, p0, Lbys;->a:Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p2, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->alpha:F

    iget v3, p3, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->alpha:F

    iget v4, p2, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->alpha:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->alpha:F

    .line 1020
    iget-object v0, p0, Lbys;->a:Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;

    iget v1, p2, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->x:F

    iget v2, p3, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->x:F

    iget v3, p2, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->x:F

    .line 1021
    iget-object v0, p0, Lbys;->a:Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;

    iget v1, p2, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->y:F

    iget v2, p3, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->y:F

    iget v3, p2, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->y:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->y:F

    .line 1022
    iget-object v0, p0, Lbys;->a:Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;

    iget v1, p2, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->scaleX:F

    iget v2, p3, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->scaleX:F

    iget v3, p2, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->scaleX:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->scaleX:F

    .line 1023
    iget-object v0, p0, Lbys;->a:Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;

    iget v1, p2, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->scaleY:F

    iget v2, p3, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->scaleY:F

    iget v3, p2, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->scaleY:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->scaleY:F

    .line 1025
    :cond_1
    iget-object v0, p0, Lbys;->a:Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;

    .line 8
    return-object v0
.end method
