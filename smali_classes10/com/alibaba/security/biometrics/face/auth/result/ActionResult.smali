.class public Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected at:I

.field protected bt:J

.field protected et:J

.field protected is:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;",
            ">;"
        }
    .end annotation
.end field

.field protected ms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/security/biometrics/face/auth/result/Mine;",
            ">;"
        }
    .end annotation
.end field

.field protected r:I

.field protected td:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->r:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->is:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->ms:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->bt:J

    return-void
.end method


# virtual methods
.method public addImageResult(Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->is:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addMine(Lcom/alibaba/security/biometrics/face/auth/result/Mine;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->ms:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAt()I
    .locals 1

    iget v0, p0, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->at:I

    return v0
.end method

.method public getBt()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-wide v0, p0, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->bt:J

    return-wide v0
.end method

.method public getEt()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-wide v0, p0, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->et:J

    return-wide v0
.end method

.method public getIs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->is:Ljava/util/List;

    return-object v0
.end method

.method public getMs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/security/biometrics/face/auth/result/Mine;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->ms:Ljava/util/List;

    return-object v0
.end method

.method public getR()I
    .locals 1

    iget v0, p0, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->r:I

    return v0
.end method

.method public getTd()I
    .locals 1

    iget v0, p0, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->td:I

    return v0
.end method

.method public setAt(I)V
    .locals 0

    iput p1, p0, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->at:I

    return-void
.end method

.method public setBt(J)V
    .locals 1

    iput-wide p1, p0, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->bt:J

    return-void
.end method

.method public setEt(J)V
    .locals 1

    iput-wide p1, p0, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->et:J

    return-void
.end method

.method public setIs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->is:Ljava/util/List;

    return-void
.end method

.method public setMs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/security/biometrics/face/auth/result/Mine;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->ms:Ljava/util/List;

    return-void
.end method

.method public setR(I)V
    .locals 0

    iput p1, p0, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->r:I

    return-void
.end method

.method public setTd(I)V
    .locals 0

    iput p1, p0, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->td:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd_HHmmss.SSS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ActionResult [actionType="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->at:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "(2:mouth,3:yaw,10:pitchdown,11:still,6:none), result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "(see LivnessResult.result/r),3d="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->td:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", beginttime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->bt:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", endtime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->et:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", images="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->is:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mines="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->ms:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
