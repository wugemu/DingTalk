.class public final Lhxm;
.super Ljava/lang/Object;

# interfaces
.implements Lhvo;


# instance fields
.field final synthetic a:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;


# direct methods
.method public constructor <init>(Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;)V
    .locals 0

    iput-object p1, p0, Lhxm;->a:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lhxm;->a:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;->d:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhxm;->a:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;->d:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView$a;

    invoke-interface {v0}, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView$a;->d()V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    iget-object v0, p0, Lhxm;->a:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;->d:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhxm;->a:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;->d:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView$a;

    const/16 v1, 0x3f6

    invoke-interface {v0, v1}, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView$a;->b(I)V

    :cond_0
    return-void
.end method
