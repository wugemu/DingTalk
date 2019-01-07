.class public final Lgoy;
.super Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;
.source "CSpaceUnifyStatisticsModel.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;-><init>()V

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lgoy;->a:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lgoy;->b:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lgoy;->c:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lgoy;->d:Ljava/lang/String;

    .line 23
    invoke-static {}, Lgot;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    iput-object v0, p0, Lgoy;->vipFlag:Ljava/lang/String;

    .line 24
    return-void

    .line 23
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method


# virtual methods
.method public final a()Lgoy;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 35
    const-string/jumbo v0, "Y"

    iput-object v0, p0, Lgoy;->result:Ljava/lang/String;

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lgoy;->startTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lgoy;->cost:J

    .line 37
    iget-wide v0, p0, Lgoy;->cost:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lgoy;->rate:D

    .line 39
    return-object p0

    .line 37
    :cond_0
    iget-wide v0, p0, Lgoy;->transferSize:J

    iget-wide v2, p0, Lgoy;->cost:J

    div-long/2addr v0, v2

    long-to-double v0, v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "bizType"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 28
    iput-object p1, p0, Lgoy;->bizType:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lgoy;->version:Ljava/lang/String;

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lgoy;->startTime:J

    .line 31
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lgoy;
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "statusCode"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 44
    const-string/jumbo v0, "N"

    iput-object v0, p0, Lgoy;->result:Ljava/lang/String;

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lgoy;->startTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lgoy;->cost:J

    .line 46
    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    .end local p1    # "errorCode":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lgoy;->errorCode:Ljava/lang/String;

    .line 47
    if-nez p2, :cond_1

    const-string/jumbo p2, ""

    .end local p2    # "statusCode":Ljava/lang/String;
    :cond_1
    iput-object p2, p0, Lgoy;->statusCode:Ljava/lang/String;

    .line 49
    return-object p0
.end method
