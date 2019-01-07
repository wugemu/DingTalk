.class final Lgon$2;
.super Lcmi;
.source "SpaceRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgon;->a(JLjava/lang/String;Lggv;Ljava/lang/String;Lcma;)V
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

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lggv;

.field final synthetic f:Lgon;


# direct methods
.method constructor <init>(Lgon;Lcma;Ljava/lang/String;JLjava/lang/String;Lggv;)V
    .locals 0
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 717
    iput-object p1, p0, Lgon$2;->f:Lgon;

    iput-object p2, p0, Lgon$2;->a:Lcma;

    iput-object p3, p0, Lgon$2;->b:Ljava/lang/String;

    iput-wide p4, p0, Lgon$2;->c:J

    iput-object p6, p0, Lgon$2;->d:Ljava/lang/String;

    iput-object p7, p0, Lgon$2;->e:Lggv;

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
    .line 772
    iget-object v1, p0, Lgon$2;->e:Lggv;

    if-nez v1, :cond_0

    const-string/jumbo v0, "SpaceRPC.addDentry, param is null"

    .line 779
    .local v0, "method":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceRPC"

    .line 780
    invoke-static {v0, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 779
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    return-void

    .line 772
    .end local v0    # "method":Ljava/lang/String;
    :cond_0
    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "SpaceRPC.addDentry"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, ", spaceId: "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lgon$2;->e:Lggv;

    iget-object v3, v3, Lggv;->b:Ljava/lang/Long;

    .line 774
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, ", path: "

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lgon$2;->e:Lggv;

    iget-object v3, v3, Lggv;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, ", folderId: "

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lgon$2;->e:Lggv;

    iget-object v3, v3, Lggv;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, ", storeUrl: "

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lgon$2;->e:Lggv;

    iget-object v3, v3, Lggv;->f:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, ", version: "

    aput-object v3, v1, v2

    const/16 v2, 0xa

    iget-object v3, p0, Lgon$2;->e:Lggv;

    iget-object v3, v3, Lggv;->n:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 773
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
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
    .line 762
    iget-object v0, p0, Lgon$2;->a:Lcma;

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lgon$2;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    :cond_0
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CSpace.RPC"

    const-string/jumbo v2, "add"

    invoke-static {v0, v1, v2}, Lyn;->b(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    invoke-direct {p0, p1, p2, p3}, Lgon$2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 768
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "CSpaceService_addDentry"

    const-string/jumbo v2, "7001"

    invoke-virtual {v0, v1, v2, p1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 717
    check-cast p1, Lghz;

    .line 1720
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v2, "CSpace.RPC"

    const-string/jumbo v3, "add"

    invoke-static {v0, v2, v3}, Lyn;->b(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 1722
    if-eqz p1, :cond_0

    iget-object v0, p1, Lghz;->a:Ljava/lang/Long;

    if-nez v0, :cond_2

    .line 1723
    :cond_0
    iget-object v0, p0, Lgon$2;->a:Lcma;

    if-eqz v0, :cond_1

    .line 1724
    iget-object v0, p0, Lgon$2;->a:Lcma;

    invoke-interface {v0, v4}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1726
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "CSpaceService_addDentry"

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;)V

    .line 1736
    :goto_0
    return-void

    .line 1730
    :cond_2
    iget-object v0, p1, Lghz;->a:Ljava/lang/Long;

    .line 2044
    invoke-static {v0, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 1730
    cmp-long v0, v2, v6

    if-eqz v0, :cond_4

    .line 1731
    iget-object v0, p0, Lgon$2;->a:Lcma;

    if-eqz v0, :cond_3

    .line 1732
    iget-object v0, p0, Lgon$2;->a:Lcma;

    iget-object v1, p1, Lghz;->a:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lghz;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    :cond_3
    iget-object v0, p1, Lghz;->a:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lghz;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v4}, Lgon$2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1735
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "CSpaceService_addDentry"

    const-string/jumbo v2, "7000"

    iget-object v3, p1, Lghz;->a:Ljava/lang/Long;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1739
    :cond_4
    iget-object v0, p1, Lghz;->c:Lghw;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->a:Lghi;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->a:Lghi;

    iget-object v0, v0, Lghi;->c:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->a:Lghi;

    iget-object v0, v0, Lghi;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1740
    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->a:Lghi;

    iget-object v0, v0, Lghi;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghg;

    iget-object v2, p0, Lgon$2;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lgoo;->a(Lghg;Ljava/lang/String;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v2

    .line 1741
    iget-wide v4, p0, Lgon$2;->c:J

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setId(J)V

    .line 1742
    iget-object v0, p0, Lgon$2;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAuthFlag(Ljava/lang/String;)V

    .line 1745
    iget-object v0, p0, Lgon$2;->e:Lggv;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lgon$2;->e:Lggv;

    iget-object v0, v0, Lggv;->a:Lgha;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lgon$2;->e:Lggv;

    iget-object v0, v0, Lggv;->a:Lgha;

    iget-object v0, v0, Lgha;->a:Ljava/lang/Integer;

    .line 3033
    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 1745
    const/4 v3, 0x4

    if-ne v0, v3, :cond_8

    .line 1746
    const/4 v0, 0x1

    .line 1748
    :goto_1
    invoke-virtual {v2, v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setOverWrite(Z)V

    .line 1749
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgoj;->a(Ljava/lang/String;)Lgoj;

    move-result-object v0

    iget-object v1, p0, Lgon$2;->a:Lcma;

    .line 3403
    if-eqz v2, :cond_5

    .line 3404
    iget-object v3, v0, Lgoj;->a:Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;

    new-instance v4, Lgoj$10;

    invoke-direct {v4, v0, v1, v2}, Lgoj$10;-><init>(Lgoj;Lcma;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    invoke-interface {v3, v2, v4}, Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;->addRpcSuccess(Lcom/alibaba/alimei/cspace/model/DentryModel;Lxv;)V

    .line 1757
    :cond_5
    :goto_2
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "CSpaceService_addDentry"

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1751
    :cond_6
    iget-object v0, p0, Lgon$2;->a:Lcma;

    if-eqz v0, :cond_7

    .line 1752
    iget-object v0, p0, Lgon$2;->a:Lcma;

    invoke-interface {v0, v4}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1754
    :cond_7
    const-string/jumbo v0, ""

    const-string/jumbo v1, "addDentry success but get null dentryInfo"

    invoke-direct {p0, v0, v1, v4}, Lgon$2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_8
    move v0, v1

    goto :goto_1
.end method
