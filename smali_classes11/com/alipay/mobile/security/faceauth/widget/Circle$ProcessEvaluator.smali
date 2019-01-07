.class public Lcom/alipay/mobile/security/faceauth/widget/Circle$ProcessEvaluator;
.super Ljava/lang/Object;
.source "Circle.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/security/faceauth/widget/Circle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProcessEvaluator"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/faceauth/widget/Circle;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/security/faceauth/widget/Circle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/security/faceauth/widget/Circle;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle$ProcessEvaluator;->a:Lcom/alipay/mobile/security/faceauth/widget/Circle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Ljava/lang/Object;
    .param p3, "endValue"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 182
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "startValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 183
    .local v3, "start":F
    check-cast p3, Ljava/lang/Float;

    .end local p3    # "endValue":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 184
    .local v2, "end":F
    sub-float v1, v2, v3

    .line 186
    .local v1, "direction":F
    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-lez v4, :cond_0

    .line 187
    sub-float v4, v5, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v4, v5

    sub-float v0, v2, v4

    .line 192
    .local v0, "deltaRadius":F
    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    return-object v4

    .line 189
    .end local v0    # "deltaRadius":F
    :cond_0
    sub-float v4, v5, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v4, v5

    add-float v0, v2, v4

    .restart local v0    # "deltaRadius":F
    goto :goto_0
.end method
