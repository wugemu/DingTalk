.class final Lgon$81;
.super Lcmi;
.source "SpaceRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgon;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Lcma;)V
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
.field final synthetic a:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field final synthetic b:Lcma;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lgon;


# direct methods
.method constructor <init>(Lgon;Lcom/alibaba/alimei/cspace/model/DentryModel;Lcma;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 618
    iput-object p1, p0, Lgon$81;->d:Lgon;

    iput-object p2, p0, Lgon$81;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-object p3, p0, Lgon$81;->b:Lcma;

    iput-object p4, p0, Lgon$81;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 675
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "renameDentry: nameNew: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lgon$81;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", dentry: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    iget-object v4, p0, Lgon$81;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 677
    invoke-static {v3, v4}, Lgot;->a(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 675
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 678
    .local v0, "method":Ljava/lang/String;
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceRPC"

    .line 679
    invoke-static {v0, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 678
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 680
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
    .line 666
    iget-object v0, p0, Lgon$81;->b:Lcma;

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lgon$81;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lgon$81;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 670
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "CSpaceService_renameDentry"

    const-string/jumbo v2, "7001"

    invoke-virtual {v0, v1, v2, p1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 618
    check-cast p1, Lghz;

    .line 1621
    if-eqz p1, :cond_8

    .line 1622
    iget-object v1, p1, Lghz;->a:Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 1623
    iget-object v1, p1, Lghz;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 1624
    sget-object v1, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v2, "CSpace.RPC"

    const-string/jumbo v3, "rename"

    invoke-static {v1, v2, v3}, Lyn;->b(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    iget-object v1, p1, Lghz;->c:Lghw;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lghz;->c:Lghw;

    iget-object v1, v1, Lghw;->a:Lghi;

    if-eqz v1, :cond_0

    .line 1628
    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->a:Lghi;

    iget-object v1, p0, Lgon$81;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgoo;->a(Lghi;Ljava/lang/String;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    .line 1630
    if-eqz v0, :cond_0

    .line 1631
    iget-object v1, p0, Lgon$81;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setId(J)V

    .line 1632
    iget-object v1, p0, Lgon$81;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAuthFlag(Ljava/lang/String;)V

    .line 1633
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgoj;->a(Ljava/lang/String;)Lgoj;

    move-result-object v1

    iget-object v2, p0, Lgon$81;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 2382
    if-eqz v0, :cond_0

    .line 2383
    iget-object v3, v1, Lgoj;->a:Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;

    iget-object v1, v1, Lgoj;->c:Lxv;

    invoke-interface {v3, v2, v0, v1}, Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;->renameRpcSuccess(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;Lxv;)V

    .line 1636
    :cond_0
    iget-object v1, p0, Lgon$81;->b:Lcma;

    if-eqz v1, :cond_1

    .line 1637
    iget-object v1, p0, Lgon$81;->b:Lcma;

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1639
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "CSpaceService_renameDentry"

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;)V

    .line 1655
    :goto_0
    return-void

    .line 1641
    :cond_2
    iget-object v1, p0, Lgon$81;->b:Lcma;

    if-eqz v1, :cond_3

    .line 1642
    iget-object v2, p0, Lgon$81;->b:Lcma;

    iget-object v1, p1, Lghz;->a:Ljava/lang/Long;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lghz;->a:Ljava/lang/Long;

    .line 1643
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v3, p1, Lghz;->b:Ljava/lang/String;

    .line 1642
    invoke-interface {v2, v1, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    iget-object v1, p1, Lghz;->a:Ljava/lang/Long;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lghz;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget-object v2, p1, Lghz;->b:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lgon$81;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1648
    :cond_3
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "CSpaceService_renameDentry"

    const-string/jumbo v2, "7000"

    iget-object v3, p1, Lghz;->a:Ljava/lang/Long;

    .line 1649
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1648
    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1643
    :cond_4
    const-string/jumbo v1, ""

    goto :goto_1

    .line 1645
    :cond_5
    const-string/jumbo v1, "(resultCode is null)"

    goto :goto_2

    .line 1652
    :cond_6
    iget-object v1, p0, Lgon$81;->b:Lcma;

    if-eqz v1, :cond_7

    .line 1653
    iget-object v1, p0, Lgon$81;->b:Lcma;

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1655
    :cond_7
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "CSpaceService_renameDentry"

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1658
    :cond_8
    const-string/jumbo v1, "(result is null)"

    const-string/jumbo v2, "(result is null)"

    invoke-direct {p0, v1, v2, v0}, Lgon$81;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1659
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v1

    const-string/jumbo v2, "CSpaceService_renameDentry"

    const-string/jumbo v3, "7000"

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
