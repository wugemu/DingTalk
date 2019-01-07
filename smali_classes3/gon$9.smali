.class public final Lgon$9;
.super Lcmi;
.source "SpaceRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
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

.field final synthetic d:I

.field final synthetic e:J

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:I

.field final synthetic j:Lgon;


# direct methods
.method public constructor <init>(Lgon;Lcma;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 1223
    iput-object p1, p0, Lgon$9;->j:Lgon;

    iput-object p2, p0, Lgon$9;->a:Lcma;

    iput-object p3, p0, Lgon$9;->b:Ljava/lang/String;

    iput-object p4, p0, Lgon$9;->c:Ljava/lang/String;

    iput p5, p0, Lgon$9;->d:I

    iput-wide p6, p0, Lgon$9;->e:J

    iput-object p8, p0, Lgon$9;->f:Ljava/lang/String;

    iput-object p9, p0, Lgon$9;->g:Ljava/lang/String;

    iput-object p10, p0, Lgon$9;->h:Ljava/lang/String;

    iput p11, p0, Lgon$9;->i:I

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1254
    .line 2261
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "searchDentry(new): keyword: "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lgon$9;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", categoryType: "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lgon$9;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, ", searchType: "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lgon$9;->d:I

    .line 2264
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, ", orgId: "

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-wide v2, p0, Lgon$9;->e:J

    .line 2265
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, ", spaceId: "

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lgon$9;->f:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, ", folderId: "

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lgon$9;->g:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, ", loadMoreId: "

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Lgon$9;->h:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, ", pageSize: "

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget v2, p0, Lgon$9;->i:I

    .line 2269
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2261
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2270
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceRPC"

    .line 2271
    invoke-static {v0, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 2270
    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    iget-object v0, p0, Lgon$9;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "CSpaceService_searchV2"

    const-string/jumbo v2, "7001"

    invoke-virtual {v0, v1, v2, p1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1223
    check-cast p1, Lghz;

    .line 3226
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CSpace.RPC"

    const-string/jumbo v2, "search"

    invoke-static {v0, v1, v2}, Lyn;->b(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 3228
    if-eqz p1, :cond_0

    iget-object v0, p1, Lghz;->a:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 3229
    :cond_0
    const-string/jumbo v0, "(result is null)"

    sget v1, Lfzs$h;->alm_search_no_result:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v4}, Lgon$9;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3230
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "CSpaceService_searchV2"

    const-string/jumbo v2, "7000"

    invoke-virtual {v0, v1, v2, v4}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3245
    :goto_0
    return-void

    .line 3234
    :cond_1
    iget-object v0, p1, Lghz;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 3235
    iget-object v0, p1, Lghz;->a:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lghz;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v4}, Lgon$9;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3236
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "CSpaceService_searchV2"

    const-string/jumbo v2, "7000"

    iget-object v3, p1, Lghz;->a:Ljava/lang/Long;

    .line 3237
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3236
    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3240
    :cond_2
    iget-object v0, p1, Lghz;->c:Lghw;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->a:Lghi;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->a:Lghi;

    iget-object v0, v0, Lghi;->c:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->a:Lghi;

    iget-object v0, v0, Lghi;->c:Ljava/util/List;

    .line 3241
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3242
    :cond_3
    iget-object v0, p1, Lghz;->a:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lfzs$h;->alm_search_no_result:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v4}, Lgon$9;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3243
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "CSpaceService_searchV2"

    const-string/jumbo v2, "7000"

    iget-object v3, p1, Lghz;->a:Ljava/lang/Long;

    .line 3244
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3243
    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3248
    :cond_4
    iget-object v0, p0, Lgon$9;->a:Lcma;

    iget-object v1, p1, Lghz;->c:Lghw;

    iget-object v1, v1, Lghw;->a:Lghi;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 3249
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "CSpaceService_searchV2"

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
