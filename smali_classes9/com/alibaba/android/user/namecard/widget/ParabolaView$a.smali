.class public final Lcom/alibaba/android/user/namecard/widget/ParabolaView$a;
.super Ljava/lang/Object;
.source "ParabolaView.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/namecard/widget/ParabolaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Landroid/graphics/Point;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/namecard/widget/ParabolaView;

.field private b:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/namecard/widget/ParabolaView;Landroid/graphics/Point;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/namecard/widget/ParabolaView;
    .param p2, "controllPoint"    # Landroid/graphics/Point;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/widget/ParabolaView$a;->a:Lcom/alibaba/android/user/namecard/widget/ParabolaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p2, p0, Lcom/alibaba/android/user/namecard/widget/ParabolaView$a;->b:Landroid/graphics/Point;

    .line 179
    return-void
.end method


# virtual methods
.method public final synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 173
    check-cast p2, Landroid/graphics/Point;

    check-cast p3, Landroid/graphics/Point;

    .line 1183
    sub-float v0, v3, p1

    sub-float v1, v3, p1

    mul-float/2addr v0, v1

    iget v1, p2, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    mul-float v1, v4, p1

    sub-float v2, v3, p1

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/widget/ParabolaView$a;->b:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float v1, p1, p1

    iget v2, p3, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 1184
    sub-float v1, v3, p1

    sub-float v2, v3, p1

    mul-float/2addr v1, v2

    iget v2, p2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    mul-float v2, v4, p1

    sub-float/2addr v3, p1

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/alibaba/android/user/namecard/widget/ParabolaView$a;->b:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float v2, p1, p1

    iget v3, p3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 1185
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 173
    return-object v2
.end method
