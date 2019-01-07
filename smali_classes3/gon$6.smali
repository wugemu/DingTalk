.class final Lgon$6;
.super Lcmi;
.source "SpaceRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgon;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
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

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lgon;


# direct methods
.method constructor <init>(Lgon;Lcma;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 977
    iput-object p1, p0, Lgon$6;->d:Lgon;

    iput-object p2, p0, Lgon$6;->a:Lcma;

    iput-object p3, p0, Lgon$6;->b:Ljava/lang/String;

    iput-object p4, p0, Lgon$6;->c:Ljava/lang/String;

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
    .line 1022
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceRPC"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "SpaceRPC.infoDentry: spaceId: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lgon$6;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", fileId: "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lgon$6;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 1023
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1022
    invoke-static {v2, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
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
    .line 1014
    iget-object v0, p0, Lgon$6;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lgon$6;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lgon$6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1018
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "CSpaceService_infoDentry"

    const-string/jumbo v2, "7001"

    invoke-virtual {v0, v1, v2, p1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 977
    check-cast p1, Lghz;

    .line 1980
    if-eqz p1, :cond_6

    .line 1981
    iget-object v1, p1, Lghz;->a:Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 1982
    iget-object v1, p1, Lghz;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 1984
    sget-object v1, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v2, "CSpace.RPC"

    const-string/jumbo v3, "info"

    invoke-static {v1, v2, v3}, Lyn;->b(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    iget-object v1, p0, Lgon$6;->a:Lcma;

    if-eqz v1, :cond_1

    .line 1986
    iget-object v1, p1, Lghz;->c:Lghw;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->a:Lghi;

    .line 1987
    :cond_0
    iget-object v1, p0, Lgon$6;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lgoo;->a(Lghi;Ljava/lang/String;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    .line 1988
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgoj;->a(Ljava/lang/String;)Lgoj;

    move-result-object v1

    iget-object v2, p0, Lgon$6;->a:Lcma;

    invoke-virtual {v1, v0, v2}, Lgoj;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Lcma;)V

    .line 1990
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "CSpaceService_infoDentry"

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;)V

    .line 2004
    :goto_0
    return-void

    .line 1992
    :cond_2
    iget-object v1, p0, Lgon$6;->a:Lcma;

    if-eqz v1, :cond_3

    .line 1993
    iget-object v1, p0, Lgon$6;->a:Lcma;

    iget-object v2, p1, Lghz;->a:Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lghz;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1995
    :cond_3
    iget-object v1, p1, Lghz;->a:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lghz;->b:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lgon$6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1996
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "CSpaceService_infoDentry"

    const-string/jumbo v2, "7000"

    iget-object v3, p1, Lghz;->a:Ljava/lang/Long;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2000
    :cond_4
    iget-object v1, p0, Lgon$6;->a:Lcma;

    if-eqz v1, :cond_5

    .line 2001
    iget-object v1, p0, Lgon$6;->a:Lcma;

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 2003
    :cond_5
    const-string/jumbo v1, "(resultModel.resultCode is null)"

    iget-object v2, p1, Lghz;->b:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lgon$6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2004
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "CSpaceService_infoDentry"

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 2007
    :cond_6
    const-string/jumbo v1, "(result is null)"

    const-string/jumbo v2, "(result is null)"

    invoke-direct {p0, v1, v2, v0}, Lgon$6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2008
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v1

    const-string/jumbo v2, "CSpaceService_infoDentry"

    const-string/jumbo v3, "7000"

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
