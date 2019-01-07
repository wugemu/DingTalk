.class public final Lgon$10;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:J

.field final synthetic f:I

.field final synthetic g:Lcma;

.field final synthetic h:Lgon;


# direct methods
.method public constructor <init>(Lgon;Ljava/lang/String;Ljava/util/List;IIJILcma;)V
    .locals 0
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 1288
    iput-object p1, p0, Lgon$10;->h:Lgon;

    iput-object p2, p0, Lgon$10;->a:Ljava/lang/String;

    iput-object p3, p0, Lgon$10;->b:Ljava/util/List;

    iput p4, p0, Lgon$10;->c:I

    iput p5, p0, Lgon$10;->d:I

    iput-wide p6, p0, Lgon$10;->e:J

    iput p8, p0, Lgon$10;->f:I

    iput-object p9, p0, Lgon$10;->g:Lcma;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1350
    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "searchDentry: keyword: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lgon$10;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", searchType: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lgon$10;->f:I

    .line 1352
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, ", orgId: "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-wide v4, p0, Lgon$10;->e:J

    .line 1353
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, ", spaceIds: "

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lgon$10;->b:Ljava/util/List;

    .line 1354
    invoke-static {v3}, Lgpr;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, ", offset: "

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget v3, p0, Lgon$10;->c:I

    .line 1355
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, ", pageSize: "

    aput-object v3, v1, v2

    const/16 v2, 0xb

    iget v3, p0, Lgon$10;->d:I

    .line 1356
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1350
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1357
    .local v0, "method":Ljava/lang/String;
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceRPC"

    .line 1358
    invoke-static {v0, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 1357
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 10
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1342
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgoj;->a(Ljava/lang/String;)Lgoj;

    move-result-object v1

    iget-object v2, p0, Lgon$10;->a:Ljava/lang/String;

    iget-object v3, p0, Lgon$10;->b:Ljava/util/List;

    iget v4, p0, Lgon$10;->c:I

    iget v5, p0, Lgon$10;->d:I

    iget-wide v6, p0, Lgon$10;->e:J

    iget v8, p0, Lgon$10;->f:I

    iget-object v9, p0, Lgon$10;->g:Lcma;

    invoke-virtual/range {v1 .. v9}, Lgoj;->a(Ljava/lang/String;Ljava/util/List;IIJILcma;)V

    .line 1344
    invoke-direct {p0, p1, p2, p3}, Lgon$10;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1345
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "CSpaceService_search"

    const-string/jumbo v2, "7001"

    invoke-virtual {v0, v1, v2, p1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v10, 0x0

    .line 1288
    check-cast p1, Lghz;

    .line 2291
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CSpace.RPC"

    const-string/jumbo v2, "search"

    invoke-static {v0, v1, v2}, Lyn;->b(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 2293
    if-nez p1, :cond_0

    .line 2295
    const-string/jumbo v0, "(result is null)"

    const-string/jumbo v1, "search from server result is null"

    invoke-direct {p0, v0, v1, v10}, Lgon$10;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2296
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgoj;->a(Ljava/lang/String;)Lgoj;

    move-result-object v1

    iget-object v2, p0, Lgon$10;->a:Ljava/lang/String;

    iget-object v3, p0, Lgon$10;->b:Ljava/util/List;

    iget v4, p0, Lgon$10;->c:I

    iget v5, p0, Lgon$10;->d:I

    iget-wide v6, p0, Lgon$10;->e:J

    iget v8, p0, Lgon$10;->f:I

    iget-object v9, p0, Lgon$10;->g:Lcma;

    invoke-virtual/range {v1 .. v9}, Lgoj;->a(Ljava/lang/String;Ljava/util/List;IIJILcma;)V

    .line 2298
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "CSpaceService_search"

    const-string/jumbo v2, "7000"

    invoke-virtual {v0, v1, v2, v10}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2321
    :goto_0
    return-void

    .line 2303
    :cond_0
    iget-object v0, p1, Lghz;->a:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lghz;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 2305
    :cond_1
    iget-object v0, p1, Lghz;->a:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lghz;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v10}, Lgon$10;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2306
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgoj;->a(Ljava/lang/String;)Lgoj;

    move-result-object v1

    iget-object v2, p0, Lgon$10;->a:Ljava/lang/String;

    iget-object v3, p0, Lgon$10;->b:Ljava/util/List;

    iget v4, p0, Lgon$10;->c:I

    iget v5, p0, Lgon$10;->d:I

    iget-wide v6, p0, Lgon$10;->e:J

    iget v8, p0, Lgon$10;->f:I

    iget-object v9, p0, Lgon$10;->g:Lcma;

    invoke-virtual/range {v1 .. v9}, Lgoj;->a(Ljava/lang/String;Ljava/util/List;IIJILcma;)V

    .line 2308
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v1

    const-string/jumbo v2, "CSpaceService_search"

    const-string/jumbo v3, "7000"

    iget-object v0, p1, Lghz;->a:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lghz;->a:Ljava/lang/Long;

    .line 2309
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2308
    :goto_1
    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, v10

    .line 2309
    goto :goto_1

    .line 2313
    :cond_3
    iget-object v0, p1, Lghz;->c:Lghw;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->a:Lghi;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->a:Lghi;

    iget-object v0, v0, Lghi;->c:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->a:Lghi;

    iget-object v0, v0, Lghi;->c:Ljava/util/List;

    .line 2314
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2316
    :cond_4
    iget-object v0, p1, Lghz;->a:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "search from server result is empty"

    invoke-direct {p0, v0, v1, v10}, Lgon$10;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2317
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgoj;->a(Ljava/lang/String;)Lgoj;

    move-result-object v1

    iget-object v2, p0, Lgon$10;->a:Ljava/lang/String;

    iget-object v3, p0, Lgon$10;->b:Ljava/util/List;

    iget v4, p0, Lgon$10;->c:I

    iget v5, p0, Lgon$10;->d:I

    iget-wide v6, p0, Lgon$10;->e:J

    iget v8, p0, Lgon$10;->f:I

    iget-object v9, p0, Lgon$10;->g:Lcma;

    invoke-virtual/range {v1 .. v9}, Lgoj;->a(Ljava/lang/String;Ljava/util/List;IIJILcma;)V

    .line 2319
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "CSpaceService_search"

    const-string/jumbo v2, "7000"

    invoke-virtual {v0, v1, v2, v10}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2324
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2325
    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->a:Lghi;

    iget-object v0, v0, Lghi;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghg;

    .line 2326
    iget-object v1, v0, Lghg;->p:Ljava/lang/Long;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lghg;->p:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-static {v0, v1}, Lgoo;->a(Lghg;Ljava/lang/String;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    .line 2328
    iget-object v0, v0, Lghg;->q:Ljava/lang/Integer;

    .line 3033
    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 2328
    const/4 v4, 0x5

    if-ne v0, v4, :cond_6

    .line 2329
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v0, v4, v10, v5}, Lfzv;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2331
    :cond_6
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    move-object v1, v10

    .line 2326
    goto :goto_3

    .line 2334
    :cond_8
    iget-object v0, p0, Lgon$10;->g:Lcma;

    if-eqz v0, :cond_9

    .line 2335
    iget-object v0, p0, Lgon$10;->g:Lcma;

    invoke-interface {v0, v2}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 2337
    :cond_9
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "CSpaceService_search"

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
