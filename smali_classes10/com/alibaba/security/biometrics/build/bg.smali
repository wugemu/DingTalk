.class public Lcom/alibaba/security/biometrics/build/bg;
.super Ljava/lang/Object;

# interfaces
.implements Lhwm;


# instance fields
.field a:Lhwm;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lhyv;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alibaba/security/biometrics/build/bh;

    invoke-direct {v0, p1}, Lcom/alibaba/security/biometrics/build/bh;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/build/bg;->a:Lhwm;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/alibaba/security/biometrics/build/be;

    invoke-direct {v0, p1}, Lcom/alibaba/security/biometrics/build/be;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/build/bg;->a:Lhwm;

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/bg;->a:Lhwm;

    invoke-interface {v0}, Lhwm;->a()I

    move-result v0

    return v0
.end method

.method public final a(Landroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/bg;->a:Lhwm;

    invoke-interface {v0, p1}, Lhwm;->a(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
