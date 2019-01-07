.class public final Lhxc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView$a;


# instance fields
.field final synthetic a:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;


# direct methods
.method public constructor <init>(Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;)V
    .locals 0

    iput-object p1, p0, Lhxc;->a:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lhxc;->a:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->T:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView$a;

    invoke-interface {v0}, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView$a;->a()V

    return-void
.end method

.method public final a([BLandroid/hardware/Camera;)V
    .locals 1

    iget-object v0, p0, Lhxc;->a:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->T:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView$a;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView$a;->a([BLandroid/hardware/Camera;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lhxc;->a:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->T:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView$a;

    invoke-interface {v0}, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView$a;->b()V

    return-void
.end method

.method public final b(I)V
    .locals 1

    iget-object v0, p0, Lhxc;->a:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->T:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView$a;

    invoke-interface {v0, p1}, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView$a;->b(I)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lhxc;->a:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->T:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView$a;

    invoke-interface {v0}, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView$a;->c()V

    return-void
.end method

.method public final d()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 0
    iget-object v3, p0, Lhxc;->a:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;

    invoke-static {}, Lhyt;->a()Lhyt;

    move-result-object v0

    invoke-virtual {v0}, Lhyt;->b()I

    move-result v0

    invoke-static {}, Lhyt;->a()Lhyt;

    move-result-object v1

    invoke-virtual {v1}, Lhyt;->c()I

    move-result v1

    .line 1000
    if-lez v1, :cond_0

    if-gtz v0, :cond_1

    .line 0
    :cond_0
    :goto_0
    iget-object v0, p0, Lhxc;->a:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->T:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView$a;

    invoke-interface {v0}, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView$a;->d()V

    return-void

    .line 1000
    :cond_1
    if-ge v0, v1, :cond_3

    move v2, v0

    :goto_1
    if-le v0, v1, :cond_2

    move v1, v0

    :cond_2
    iget-object v0, v3, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->y:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    iget-object v0, v3, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->m:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    mul-int v6, v4, v1

    mul-int v7, v5, v2

    if-le v6, v7, :cond_4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    mul-int/2addr v1, v4

    div-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :goto_2
    iget-object v1, v3, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->m:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;

    invoke-virtual {v1, v0}, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    :cond_4
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    mul-int/2addr v2, v5

    div-int v1, v2, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_2
.end method
