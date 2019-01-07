.class final Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$3$1;
.super Ljava/lang/Object;
.source "FaceAlgorithmInfoPattern.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$3;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$3;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$3;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$3$1;->a:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 282
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$3$1;->a:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$3;

    iget-object v0, v0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$3;->c:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->y(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$3$1;->a:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$3;

    iget-object v1, v1, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$3;->c:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    invoke-static {v1}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->x(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 283
    return-void
.end method
