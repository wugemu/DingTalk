.class public Lcom/alibaba/security/biometrics/AuthContext;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/security/biometrics/AuthContext$b;,
        Lcom/alibaba/security/biometrics/AuthContext$AuthType;,
        Lcom/alibaba/security/biometrics/AuthContext$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/alibaba/security/biometrics/AuthContext$a;

.field protected b:Lhwh;

.field protected c:Lhwh;

.field protected d:Lcom/alibaba/security/biometrics/AuthContext$AuthType;

.field protected e:Lcom/alibaba/security/biometrics/AuthContext$b;

.field protected f:Landroid/content/Context;

.field protected g:Landroid/os/Bundle;

.field protected h:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/alibaba/security/biometrics/AuthContext$a;->INITED:Lcom/alibaba/security/biometrics/AuthContext$a;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/AuthContext;->a:Lcom/alibaba/security/biometrics/AuthContext$a;

    sget-object v0, Lcom/alibaba/security/biometrics/AuthContext$AuthType;->UNKNOWN:Lcom/alibaba/security/biometrics/AuthContext$AuthType;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/AuthContext;->d:Lcom/alibaba/security/biometrics/AuthContext$AuthType;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/AuthContext;->g:Landroid/os/Bundle;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/AuthContext;->h:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/alibaba/security/biometrics/AuthContext;->f:Landroid/content/Context;

    invoke-static {}, Lcom/alibaba/security/biometrics/AuthContext;->e()Lhwh;

    move-result-object v0

    .line 1000
    iput-object v0, p0, Lcom/alibaba/security/biometrics/AuthContext;->c:Lhwh;

    .line 0
    return-void
.end method

.method private static e()Lhwh;
    .locals 2

    new-instance v0, Lhvi;

    invoke-direct {v0}, Lhvi;-><init>()V

    new-instance v1, Lhvm;

    invoke-direct {v1}, Lhvm;-><init>()V

    invoke-virtual {v0, v1}, Lhwh;->a(Lhwh;)V

    new-instance v1, Lhvl;

    invoke-direct {v1}, Lhvl;-><init>()V

    invoke-virtual {v0, v1}, Lhwh;->a(Lhwh;)V

    new-instance v1, Lhvk;

    invoke-direct {v1}, Lhvk;-><init>()V

    invoke-virtual {v0, v1}, Lhwh;->a(Lhwh;)V

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/AuthContext;->f:Landroid/content/Context;

    return-object v0
.end method

.method public final a(Lcom/alibaba/security/biometrics/AuthContext$a;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/security/biometrics/AuthContext;->a:Lcom/alibaba/security/biometrics/AuthContext$a;

    return-void
.end method

.method public final a(Lcom/alibaba/security/biometrics/AuthContext$b;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/security/biometrics/AuthContext;->e:Lcom/alibaba/security/biometrics/AuthContext$b;

    return-void
.end method

.method public final a(Lhwh;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/security/biometrics/AuthContext;->b:Lhwh;

    return-void
.end method

.method public final a(Lcom/alibaba/security/biometrics/AuthContext$AuthType;Landroid/os/Bundle;Lcom/alibaba/security/biometrics/AuthContext$b;)Z
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lcom/alibaba/security/biometrics/AuthContext;->c:Lhwh;

    if-eqz v0, :cond_1

    .line 2000
    iput-object p3, p0, Lcom/alibaba/security/biometrics/AuthContext;->e:Lcom/alibaba/security/biometrics/AuthContext$b;

    .line 0
    sget-object v0, Lcom/alibaba/security/biometrics/AuthContext$a;->INITED:Lcom/alibaba/security/biometrics/AuthContext$a;

    .line 3000
    iput-object v0, p0, Lcom/alibaba/security/biometrics/AuthContext;->a:Lcom/alibaba/security/biometrics/AuthContext$a;

    .line 4000
    iput-object p1, p0, Lcom/alibaba/security/biometrics/AuthContext;->d:Lcom/alibaba/security/biometrics/AuthContext$AuthType;

    .line 5000
    iput-object p2, p0, Lcom/alibaba/security/biometrics/AuthContext;->g:Landroid/os/Bundle;

    .line 0
    iget-object v0, p0, Lcom/alibaba/security/biometrics/AuthContext;->c:Lhwh;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alibaba/security/biometrics/AuthContext;->e()Lhwh;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/security/biometrics/AuthContext;->c:Lhwh;

    :cond_0
    iget-object v0, p0, Lcom/alibaba/security/biometrics/AuthContext;->c:Lhwh;

    invoke-virtual {v0, p0}, Lhwh;->d(Lcom/alibaba/security/biometrics/AuthContext;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcom/alibaba/security/biometrics/AuthContext$AuthType;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/AuthContext;->d:Lcom/alibaba/security/biometrics/AuthContext$AuthType;

    return-object v0
.end method

.method public final c()Lcom/alibaba/security/biometrics/AuthContext$b;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/AuthContext;->e:Lcom/alibaba/security/biometrics/AuthContext$b;

    return-object v0
.end method

.method public final d()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/AuthContext;->g:Landroid/os/Bundle;

    return-object v0
.end method
