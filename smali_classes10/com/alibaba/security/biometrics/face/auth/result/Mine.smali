.class public Lcom/alibaba/security/biometrics/face/auth/result/Mine;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected mt:I

.field protected t:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/alibaba/security/biometrics/face/auth/result/Mine;->mt:I

    iput-wide p2, p0, Lcom/alibaba/security/biometrics/face/auth/result/Mine;->t:J

    return-void
.end method


# virtual methods
.method public getMt()I
    .locals 1

    iget v0, p0, Lcom/alibaba/security/biometrics/face/auth/result/Mine;->mt:I

    return v0
.end method

.method public getT()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-wide v0, p0, Lcom/alibaba/security/biometrics/face/auth/result/Mine;->t:J

    return-wide v0
.end method

.method public setMt(I)V
    .locals 0

    iput p1, p0, Lcom/alibaba/security/biometrics/face/auth/result/Mine;->mt:I

    return-void
.end method

.method public setT(J)V
    .locals 1

    iput-wide p1, p0, Lcom/alibaba/security/biometrics/face/auth/result/Mine;->t:J

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

    const-string/jumbo v2, "Mine [minetype="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alibaba/security/biometrics/face/auth/result/Mine;->mt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "(0:ACTIONBLEND,1:NOTVIDEO,2:TIMEOUT,3:NOTLIVE,4:BADCOLOR,5:BAD3D,-1:UNKNOWN), time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/alibaba/security/biometrics/face/auth/result/Mine;->t:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
