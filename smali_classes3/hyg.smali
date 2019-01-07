.class final Lhyg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhyf;


# direct methods
.method constructor <init>(Lhyf;)V
    .locals 0

    iput-object p1, p0, Lhyg;->a:Lhyf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    iget-object v0, p0, Lhyg;->a:Lhyf;

    iget-object v0, v0, Lhyf;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    const/16 v1, 0x3f4

    invoke-virtual {v0, v1}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->b(I)V

    iget-object v0, p0, Lhyg;->a:Lhyf;

    iget-object v0, v0, Lhyf;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->n:Z

    return-void
.end method
