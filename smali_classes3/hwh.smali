.class public abstract Lhwh;
.super Ljava/lang/Object;


# instance fields
.field protected d:Lhwh;

.field public e:Lcom/alibaba/security/biometrics/AuthContext$AuthType;

.field public f:Lcom/alibaba/security/biometrics/AuthContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/alibaba/security/biometrics/AuthContext$AuthType;->UNKNOWN:Lcom/alibaba/security/biometrics/AuthContext$AuthType;

    iput-object v0, p0, Lhwh;->e:Lcom/alibaba/security/biometrics/AuthContext$AuthType;

    return-void
.end method


# virtual methods
.method public final a(Lhwh;)V
    .locals 1

    :goto_0
    iget-object v0, p0, Lhwh;->d:Lhwh;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lhwh;->d:Lhwh;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lhwh;->d:Lhwh;

    return-void
.end method

.method public a(Lcom/alibaba/security/biometrics/AuthContext;)Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 0
    .line 1000
    iget-object v1, p0, Lhwh;->e:Lcom/alibaba/security/biometrics/AuthContext$AuthType;

    .line 0
    sget-object v2, Lcom/alibaba/security/biometrics/AuthContext$AuthType;->UNKNOWN:Lcom/alibaba/security/biometrics/AuthContext$AuthType;

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lhwh;->e:Lcom/alibaba/security/biometrics/AuthContext$AuthType;

    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/AuthContext;->b()Lcom/alibaba/security/biometrics/AuthContext$AuthType;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public abstract b(Lcom/alibaba/security/biometrics/AuthContext;)Z
.end method

.method public final d(Lcom/alibaba/security/biometrics/AuthContext;)Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 0
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lhwh;->a(Lcom/alibaba/security/biometrics/AuthContext;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/alibaba/security/biometrics/AuthContext$a;->PROCESSING:Lcom/alibaba/security/biometrics/AuthContext$a;

    invoke-virtual {p1, v0}, Lcom/alibaba/security/biometrics/AuthContext;->a(Lcom/alibaba/security/biometrics/AuthContext$a;)V

    .line 2000
    iput-object p1, p0, Lhwh;->f:Lcom/alibaba/security/biometrics/AuthContext;

    .line 0
    invoke-virtual {p0, p1}, Lhwh;->b(Lcom/alibaba/security/biometrics/AuthContext;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    .line 3000
    iget-object v1, p0, Lhwh;->d:Lhwh;

    .line 0
    if-eqz v1, :cond_1

    .line 4000
    iget-object p0, p0, Lhwh;->d:Lhwh;

    goto :goto_0

    .line 0
    :cond_1
    sget-object v1, Lcom/alibaba/security/biometrics/AuthContext$a;->PROCESS_END:Lcom/alibaba/security/biometrics/AuthContext$a;

    invoke-virtual {p1, v1}, Lcom/alibaba/security/biometrics/AuthContext;->a(Lcom/alibaba/security/biometrics/AuthContext$a;)V

    return v0
.end method
