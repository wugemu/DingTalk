.class public Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;
.super Ljava/lang/Object;
.source "CPUTimeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadTimeInfo"
.end annotation


# instance fields
.field public stime:J

.field public tName:Ljava/lang/String;

.field public tid:I

.field public utime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;)Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;
    .locals 6
    .param p1, "right"    # Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 297
    new-instance v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;-><init>()V

    .line 298
    .local v0, "newInfo":Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;
    iget v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->tid:I

    iput v1, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->tid:I

    .line 299
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->tName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->tName:Ljava/lang/String;

    .line 300
    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->utime:J

    iget-wide v4, p1, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->utime:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->utime:J

    .line 301
    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->stime:J

    iget-wide v4, p1, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->stime:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->stime:J

    .line 303
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[ThreadTimeInfo] tid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->tid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " tName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->tName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " utime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->utime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " stime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->stime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
