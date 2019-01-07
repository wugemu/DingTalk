.class final Lgon$51;
.super Lcmi;
.source "SpaceRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgon;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcma;)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lghh;

.field final synthetic f:Lcma;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:I

.field final synthetic i:Lgon;


# direct methods
.method constructor <init>(Lgon;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lghh;Lcma;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 469
    iput-object p1, p0, Lgon$51;->i:Lgon;

    iput-object p2, p0, Lgon$51;->a:Ljava/lang/String;

    iput-object p3, p0, Lgon$51;->b:Ljava/lang/String;

    iput-object p4, p0, Lgon$51;->c:Ljava/lang/String;

    iput-object p5, p0, Lgon$51;->d:Ljava/lang/String;

    iput-object p6, p0, Lgon$51;->e:Lghh;

    iput-object p7, p0, Lgon$51;->f:Lcma;

    iput-object p8, p0, Lgon$51;->g:Ljava/lang/String;

    iput p9, p0, Lgon$51;->h:I

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 480
    iget-object v1, p0, Lgon$51;->f:Lcma;

    if-eqz v1, :cond_0

    .line 481
    iget-object v1, p0, Lgon$51;->f:Lcma;

    invoke-interface {v1, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    :cond_0
    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "SpaceRPC.listDentrys"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, ", spaceId"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lgon$51;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, ", folderId: "

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lgon$51;->g:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, ", path: "

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lgon$51;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, ", sortType: "

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget v3, p0, Lgon$51;->h:I

    .line 488
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, ", loadMoreId: "

    aput-object v3, v1, v2

    const/16 v2, 0xa

    iget-object v3, p0, Lgon$51;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 483
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, "method":Ljava/lang/String;
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceRPC"

    .line 491
    invoke-static {v0, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 490
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v1

    const-string/jumbo v2, "CSpaceService_listDentry"

    const-string/jumbo v3, "7001"

    invoke-virtual {v1, v2, v3, p1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 469
    move-object v1, p1

    check-cast v1, Lghz;

    .line 1472
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v2, "CSpace.RPC"

    iget-object v3, p0, Lgon$51;->a:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lyn;->b(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    iget-object v0, p0, Lgon$51;->i:Lgon;

    iget-object v2, p0, Lgon$51;->b:Ljava/lang/String;

    iget-object v3, p0, Lgon$51;->c:Ljava/lang/String;

    iget-object v4, p0, Lgon$51;->d:Ljava/lang/String;

    iget-object v5, p0, Lgon$51;->e:Lghh;

    iget-object v5, v5, Lghh;->b:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lgon$51;->f:Lcma;

    invoke-static/range {v0 .. v6}, Lgon;->a(Lgon;Lghz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcma;)V

    .line 1475
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "CSpaceService_listDentry"

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;)V

    .line 469
    return-void
.end method
