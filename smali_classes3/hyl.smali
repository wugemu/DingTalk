.class public final Lhyl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;)V
    .locals 0

    iput-object p1, p0, Lhyl;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    iget-object v0, p0, Lhyl;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->b(Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;Z)Z

    return-void
.end method
