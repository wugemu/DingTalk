.class final Lgon$73;
.super Lcmi;
.source "SpaceRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgon;->a(Ljava/util/List;ZLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lghz;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Z

.field final synthetic d:Lgon;


# direct methods
.method constructor <init>(Lgon;Lcma;Ljava/util/List;Z)V
    .locals 0
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 546
    iput-object p1, p0, Lgon$73;->d:Lgon;

    iput-object p2, p0, Lgon$73;->a:Lcma;

    iput-object p3, p0, Lgon$73;->b:Ljava/util/List;

    iput-boolean p4, p0, Lgon$73;->c:Z

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 592
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "listSpaces: spaceIds: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lgon$73;->b:Ljava/util/List;

    .line 593
    invoke-static {v3}, Lgpr;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", byDomain: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Lgon$73;->c:Z

    .line 594
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 592
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, "method":Ljava/lang/String;
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceRPC"

    .line 596
    invoke-static {v0, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 595
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 584
    iget-object v0, p0, Lgon$73;->a:Lcma;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lgon$73;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lgon$73;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 588
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "CSpaceService_listSpace"

    const-string/jumbo v2, "7001"

    invoke-virtual {v0, v1, v2, p1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 546
    check-cast p1, Lghz;

    .line 1549
    if-eqz p1, :cond_8

    .line 1550
    iget-object v1, p1, Lghz;->a:Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 1551
    iget-object v1, p1, Lghz;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 1552
    sget-object v1, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v2, "CSpace.RPC"

    const-string/jumbo v3, "listSpace"

    invoke-static {v1, v2, v3}, Lyn;->b(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    iget-object v1, p0, Lgon$73;->a:Lcma;

    if-eqz v1, :cond_1

    .line 1557
    iget-object v1, p0, Lgon$73;->a:Lcma;

    iget-object v2, p1, Lghz;->c:Lghw;

    if-eqz v2, :cond_0

    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->b:Lgie;

    :cond_0
    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1559
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "CSpaceService_listSpace"

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;)V

    .line 1574
    :goto_0
    return-void

    .line 1561
    :cond_2
    iget-object v1, p0, Lgon$73;->a:Lcma;

    if-eqz v1, :cond_3

    .line 1562
    iget-object v2, p0, Lgon$73;->a:Lcma;

    iget-object v1, p1, Lghz;->a:Ljava/lang/Long;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lghz;->a:Ljava/lang/Long;

    .line 1563
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v3, p1, Lghz;->b:Ljava/lang/String;

    .line 1562
    invoke-interface {v2, v1, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    :cond_3
    iget-object v1, p1, Lghz;->a:Ljava/lang/Long;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lghz;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget-object v2, p1, Lghz;->b:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lgon$73;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1568
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "CSpaceService_listSpace"

    const-string/jumbo v2, "7000"

    iget-object v3, p1, Lghz;->a:Ljava/lang/Long;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1563
    :cond_4
    const-string/jumbo v1, ""

    goto :goto_1

    .line 1566
    :cond_5
    const-string/jumbo v1, "(resultCode is null)"

    goto :goto_2

    .line 1571
    :cond_6
    iget-object v1, p0, Lgon$73;->a:Lcma;

    if-eqz v1, :cond_7

    .line 1572
    iget-object v1, p0, Lgon$73;->a:Lcma;

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1574
    :cond_7
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "CSpaceService_listSpace"

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1577
    :cond_8
    const-string/jumbo v1, "(result is null)"

    const-string/jumbo v2, "(result is null)"

    invoke-direct {p0, v1, v2, v0}, Lgon$73;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1578
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v1

    const-string/jumbo v2, "CSpaceService_listSpace"

    const-string/jumbo v3, "7000"

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
