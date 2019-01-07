.class public Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;
.super Ljava/lang/Object;
.source "StatsParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrafficIncInfo"
.end annotation


# instance fields
.field public mBgOtherInc:J

.field public mBgWifiInc:J

.field public mFgOtherInc:J

.field public mFgWifiInc:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInc()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 414
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mFgWifiInc:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mFgOtherInc:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mBgWifiInc:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mBgOtherInc:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "mFgWifiInc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mFgWifiInc:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mFgOtherInc="

    .line 421
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mFgOtherInc:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mBgWifiInc="

    .line 422
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mBgWifiInc:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mBgOtherInc="

    .line 423
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mBgOtherInc:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
