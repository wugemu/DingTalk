.class public final Lhye;
.super Ljava/lang/Object;


# static fields
.field public static a:Lhye;


# instance fields
.field protected b:I

.field protected c:I

.field protected d:Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

.field protected e:Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;

.field protected f:Lhzi;

.field protected g:Lhzi;

.field protected h:Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

.field public i:Z

.field public j:Z

.field protected k:I

.field protected l:Lhwa;

.field protected m:Landroid/os/Bundle;

.field protected n:I

.field protected o:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lhye;->b:I

    iput v0, p0, Lhye;->c:I

    iput-boolean v0, p0, Lhye;->j:Z

    iput v0, p0, Lhye;->n:I

    iput-boolean v0, p0, Lhye;->o:Z

    new-instance v0, Lhwa;

    invoke-direct {v0}, Lhwa;-><init>()V

    iput-object v0, p0, Lhye;->l:Lhwa;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lhye;->m:Landroid/os/Bundle;

    return-void
.end method

.method public static a()Lhye;
    .locals 1

    sget-object v0, Lhye;->a:Lhye;

    if-nez v0, :cond_0

    new-instance v0, Lhye;

    invoke-direct {v0}, Lhye;-><init>()V

    sput-object v0, Lhye;->a:Lhye;

    :cond_0
    sget-object v0, Lhye;->a:Lhye;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lhye;->b:I

    return-void
.end method

.method public final a(Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;)V
    .locals 0

    iput-object p1, p0, Lhye;->e:Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;

    return-void
.end method

.method public final a(Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;)V
    .locals 0

    iput-object p1, p0, Lhye;->h:Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    return-void
.end method

.method public final a(Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;)V
    .locals 0

    iput-object p1, p0, Lhye;->d:Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    return-void
.end method

.method public final a(Lhzi;)V
    .locals 0

    iput-object p1, p0, Lhye;->f:Lhzi;

    return-void
.end method

.method public final a(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lhye;->o:Z

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lhye;->b:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lhye;->n:I

    return-void
.end method

.method public final b(Lhzi;)V
    .locals 0

    iput-object p1, p0, Lhye;->g:Lhzi;

    return-void
.end method

.method public final b(Z)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    const/4 v2, 0x0

    const/4 v1, 0x0

    new-instance v0, Lhwa;

    invoke-direct {v0}, Lhwa;-><init>()V

    iput-object v0, p0, Lhye;->l:Lhwa;

    iput-boolean v1, p0, Lhye;->i:Z

    iput v1, p0, Lhye;->c:I

    const/4 v0, -0x2

    iput v0, p0, Lhye;->k:I

    iput v1, p0, Lhye;->n:I

    iput-object v2, p0, Lhye;->f:Lhzi;

    iput-object v2, p0, Lhye;->g:Lhzi;

    return-void
.end method

.method public final c(I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lhye;->c:I

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lhye;->o:Z

    return v0
.end method

.method public final d()Lhzi;
    .locals 1

    iget-object v0, p0, Lhye;->f:Lhzi;

    return-object v0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lhye;->k:I

    return-void
.end method

.method public final e()Lhzi;
    .locals 1

    iget-object v0, p0, Lhye;->g:Lhzi;

    return-object v0
.end method

.method public final f()Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;
    .locals 1

    iget-object v0, p0, Lhye;->h:Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    return-object v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lhye;->l:Lhwa;

    .line 1000
    iget v0, v0, Lhwa;->g:I

    .line 0
    return v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lhye;->l:Lhwa;

    .line 2000
    iget v0, v0, Lhwa;->g:I

    .line 0
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lhye;->n:I

    return v0
.end method

.method public final j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;
    .locals 1

    iget-object v0, p0, Lhye;->d:Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    invoke-direct {v0}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;-><init>()V

    iput-object v0, p0, Lhye;->d:Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    :cond_0
    iget-object v0, p0, Lhye;->d:Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    return-object v0
.end method

.method public final k()Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;
    .locals 1

    iget-object v0, p0, Lhye;->e:Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;

    return-object v0
.end method

.method public final l()I
    .locals 1

    iget v0, p0, Lhye;->c:I

    return v0
.end method

.method public final m()V
    .locals 1

    iget v0, p0, Lhye;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lhye;->c:I

    return-void
.end method

.method public final n()Lhwa;
    .locals 1

    iget-object v0, p0, Lhye;->l:Lhwa;

    return-object v0
.end method

.method public final o()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lhye;->m:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lhye;->m:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Lhye;->m:Landroid/os/Bundle;

    return-object v0
.end method
