.class final Lgon$72;
.super Lcmi;
.source "SpaceRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lghy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lgon;


# direct methods
.method constructor <init>(Lgon;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 3696
    iput-object p1, p0, Lgon$72;->b:Lgon;

    iput-object p2, p0, Lgon$72;->a:Lcma;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 3717
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceRPC"

    const-string/jumbo v3, "listDentryExt"

    .line 3718
    invoke-static {v3, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 3717
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3719
    if-nez p3, :cond_0

    move-object v0, p2

    .line 3721
    .local v0, "errorMsg":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lgon$72;->a:Lcma;

    invoke-interface {v1, p1, v0}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3723
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v1

    const-string/jumbo v2, "CSpaceService_listDentryExt"

    const-string/jumbo v3, "7001"

    invoke-virtual {v1, v2, v3, p1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3725
    return-void

    .line 3719
    .end local v0    # "errorMsg":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, " caused by "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 3720
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 3696
    check-cast p1, Lghy;

    .line 4699
    if-nez p1, :cond_0

    .line 4700
    const-string/jumbo v0, "RESULT_NULL"

    const-string/jumbo v1, "result is null"

    invoke-virtual {p0, v0, v1, v3}, Lgon$72;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4701
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "CSpaceService_listDentryExt"

    const-string/jumbo v2, "7000"

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4709
    :goto_0
    return-void

    .line 4705
    :cond_0
    iget-object v0, p1, Lghy;->a:Ljava/lang/Long;

    .line 5044
    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 4705
    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 4706
    iget-object v0, p1, Lghy;->a:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lghy;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v3}, Lgon$72;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4707
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "CSpaceService_listDentryExt"

    const-string/jumbo v2, "7000"

    iget-object v3, p1, Lghy;->a:Ljava/lang/Long;

    .line 4708
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 4707
    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4711
    :cond_1
    iget-object v0, p0, Lgon$72;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 4712
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "CSpaceService_listDentryExt"

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
