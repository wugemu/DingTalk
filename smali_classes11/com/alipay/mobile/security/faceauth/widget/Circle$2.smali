.class final Lcom/alipay/mobile/security/faceauth/widget/Circle$2;
.super Ljava/lang/Object;
.source "Circle.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/security/faceauth/widget/Circle;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/faceauth/widget/Circle;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/faceauth/widget/Circle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/security/faceauth/widget/Circle;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle$2;->a:Lcom/alipay/mobile/security/faceauth/widget/Circle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 210
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle$2;->a:Lcom/alipay/mobile/security/faceauth/widget/Circle;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/alipay/mobile/security/faceauth/widget/Circle;->c:F

    .line 211
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle$2;->a:Lcom/alipay/mobile/security/faceauth/widget/Circle;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/widget/Circle;->postInvalidate()V

    .line 212
    return-void
.end method
