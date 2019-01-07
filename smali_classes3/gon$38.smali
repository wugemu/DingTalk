.class final Lgon$38;
.super Lcmi;
.source "SpaceRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgon;->a(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;IJLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lgkh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:J

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/util/List;

.field final synthetic g:I

.field final synthetic h:J

.field final synthetic i:Lgon;


# direct methods
.method constructor <init>(Lgon;Lcma;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)V
    .locals 0
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 2436
    iput-object p1, p0, Lgon$38;->i:Lgon;

    iput-object p2, p0, Lgon$38;->a:Lcma;

    iput-wide p3, p0, Lgon$38;->b:J

    iput-object p5, p0, Lgon$38;->c:Ljava/util/List;

    iput-object p6, p0, Lgon$38;->d:Ljava/lang/String;

    iput-object p7, p0, Lgon$38;->e:Ljava/lang/String;

    iput-object p8, p0, Lgon$38;->f:Ljava/util/List;

    iput p9, p0, Lgon$38;->g:I

    iput-wide p10, p0, Lgon$38;->h:J

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
    .line 2472
    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "createAcl: spaceId: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lgon$38;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", folderId: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lgon$38;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, ", aclType: "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-wide v4, p0, Lgon$38;->b:J

    .line 2475
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, ", memberIds: "

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lgon$38;->f:Ljava/util/List;

    .line 2476
    invoke-static {v3}, Lgpr;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, ", memberType: "

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget v3, p0, Lgon$38;->g:I

    .line 2477
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, ", orgId: "

    aput-object v3, v1, v2

    const/16 v2, 0xb

    iget-wide v4, p0, Lgon$38;->h:J

    .line 2478
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2472
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2479
    .local v0, "method":Ljava/lang/String;
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceRPC"

    .line 2480
    invoke-static {v0, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 2479
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2481
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
    .line 2465
    iget-object v0, p0, Lgon$38;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2466
    invoke-direct {p0, p1, p2, p3}, Lgon$38;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2467
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "CSpaceAclService_createAcl"

    const-string/jumbo v2, "7001"

    invoke-virtual {v0, v1, v2, p1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2469
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2436
    check-cast p1, Lgkh;

    .line 3439
    if-eqz p1, :cond_0

    iget-object v0, p1, Lgkh;->a:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 3440
    :cond_0
    iget-object v0, p0, Lgon$38;->a:Lcma;

    const-string/jumbo v1, "2012"

    const-string/jumbo v2, "data error"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3441
    const-string/jumbo v0, "(result is null)"

    invoke-direct {p0, v0, v3, v3}, Lgon$38;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3442
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "CSpaceAclService_createAcl"

    const-string/jumbo v2, "7000"

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3454
    :goto_0
    return-void

    .line 3447
    :cond_1
    iget-object v0, p1, Lgkh;->a:Ljava/lang/Long;

    .line 4044
    invoke-static {v0, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 3447
    cmp-long v0, v0, v8

    if-nez v0, :cond_2

    .line 3448
    new-instance v0, Lgnv;

    invoke-direct {v0}, Lgnv;-><init>()V

    .line 3449
    iget-wide v4, p0, Lgon$38;->b:J

    .line 4107
    iput-wide v4, v0, Lgnv;->b:J

    .line 3450
    iget-object v1, p0, Lgon$38;->c:Ljava/util/List;

    iget-wide v4, p0, Lgon$38;->b:J

    move v3, v2

    move v6, v2

    invoke-static/range {v1 .. v6}, Lgnu;->a(Ljava/util/List;ZZJI)Ljava/util/List;

    move-result-object v1

    .line 4123
    iput-object v1, v0, Lgnv;->d:Ljava/util/List;

    .line 3451
    iget-object v1, p1, Lgkh;->c:Ljava/lang/Long;

    .line 5044
    invoke-static {v1, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 5099
    iput-wide v2, v0, Lgnv;->a:J

    .line 3452
    iget-object v1, p0, Lgon$38;->a:Lcma;

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 3453
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "CSpaceAclService_createAcl"

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 3457
    :cond_2
    iget-object v0, p0, Lgon$38;->a:Lcma;

    iget-object v1, p1, Lgkh;->a:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lgkh;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3458
    iget-object v0, p1, Lgkh;->a:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lgkh;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v3}, Lgon$38;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3459
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "CSpaceAclService_createAcl"

    const-string/jumbo v2, "7000"

    iget-object v3, p1, Lgkh;->a:Ljava/lang/Long;

    .line 3460
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3459
    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
