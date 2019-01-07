.class public final Lhvw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alibaba/security/biometrics/build/ak;


# direct methods
.method public constructor <init>(Lcom/alibaba/security/biometrics/build/ak;)V
    .locals 0

    iput-object p1, p0, Lhvw;->a:Lcom/alibaba/security/biometrics/build/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    iget-object v0, p0, Lhvw;->a:Lcom/alibaba/security/biometrics/build/ak;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/build/ak;->b:Lcom/alibaba/security/biometrics/build/ak$b;

    if-eqz v0, :cond_0

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->setEt(J)V

    iget-object v0, p0, Lhvw;->a:Lcom/alibaba/security/biometrics/build/ak;

    invoke-static {v0}, Lcom/alibaba/security/biometrics/build/ak;->b(Lcom/alibaba/security/biometrics/build/ak;)V

    iget-object v0, p0, Lhvw;->a:Lcom/alibaba/security/biometrics/build/ak;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/build/ak;->b:Lcom/alibaba/security/biometrics/build/ak$b;

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v1

    invoke-virtual {v1}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    invoke-interface {v0}, Lcom/alibaba/security/biometrics/build/ak$b;->c()V

    :cond_0
    return-void
.end method
