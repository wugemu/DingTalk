.class public final Lhwa;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field protected b:J

.field protected c:I

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

.field public f:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lhwa;->a:Z

    sget-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->DONE:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    iput-object v0, p0, Lhwa;->e:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    sget-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->DONE:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    iput-object v0, p0, Lhwa;->f:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    const/4 v0, -0x1

    iput v0, p0, Lhwa;->g:I

    const/16 v0, 0x10e

    iput v0, p0, Lhwa;->h:I

    invoke-static {}, Lhyv;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lhyv;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x5a

    iput v0, p0, Lhwa;->h:I

    :cond_1
    iput v1, p0, Lhwa;->c:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lhwa;->c:I

    return v0
.end method

.method public final a(I)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "=========setCurrentPhase===from"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lhwa;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lhwa;->c:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lhwa;->d:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lhwa;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lhwa;->a:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lhwa;->b:J

    const/4 v0, 0x0

    iput v0, p0, Lhwa;->c:I

    return-void
.end method

.method public final d()Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    iget-object v0, p0, Lhwa;->e:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    iput-object v0, p0, Lhwa;->f:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    sget-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->DONE:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    iput-object v0, p0, Lhwa;->e:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    iget v0, p0, Lhwa;->g:I

    iget-object v1, p0, Lhwa;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lhwa;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lhwa;->g:I

    iget-object v0, p0, Lhwa;->d:Ljava/util/List;

    iget v1, p0, Lhwa;->g:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    iput-object v0, p0, Lhwa;->e:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    :cond_0
    iget-object v0, p0, Lhwa;->e:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    return-object v0
.end method
