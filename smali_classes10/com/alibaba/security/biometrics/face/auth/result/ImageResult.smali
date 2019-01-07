.class public Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected b:F

.field protected gb:F

.field protected mb:F

.field protected p:Ljava/lang/String;

.field protected q:F

.field protected t:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getB()F
    .locals 1

    iget v0, p0, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->b:F

    return v0
.end method

.method public getGb()F
    .locals 1

    iget v0, p0, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->gb:F

    return v0
.end method

.method public getMb()F
    .locals 1

    iget v0, p0, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->mb:F

    return v0
.end method

.method public getP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getQ()F
    .locals 1

    iget v0, p0, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->q:F

    return v0
.end method

.method public getT()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-wide v0, p0, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->t:J

    return-wide v0
.end method

.method public setB(F)V
    .locals 0

    iput p1, p0, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->b:F

    return-void
.end method

.method public setGb(F)V
    .locals 0

    iput p1, p0, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->gb:F

    return-void
.end method

.method public setMb(F)V
    .locals 0

    iput p1, p0, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->mb:F

    return-void
.end method

.method public setP(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->p:Ljava/lang/String;

    return-void
.end method

.method public setQ(F)V
    .locals 0

    iput p1, p0, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->q:F

    return-void
.end method

.method public setT(J)V
    .locals 1

    iput-wide p1, p0, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->t:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ImageResult{q="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->q:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", p=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", gb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->gb:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->mb:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->t:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
