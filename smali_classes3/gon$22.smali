.class public final Lgon$22;
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
        "Lgkp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lgon;


# direct methods
.method public constructor <init>(Lgon;Lcma;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 1781
    iput-object p1, p0, Lgon$22;->e:Lgon;

    iput-object p2, p0, Lgon$22;->a:Lcma;

    iput-wide p3, p0, Lgon$22;->b:J

    iput-object p5, p0, Lgon$22;->c:Ljava/lang/String;

    iput-object p6, p0, Lgon$22;->d:Ljava/lang/String;

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
    .line 1852
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "listAclMembers: spaceId: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lgon$22;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", folderId: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lgon$22;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, ", type: "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-wide v4, p0, Lgon$22;->b:J

    .line 1855
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1852
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1856
    .local v0, "method":Ljava/lang/String;
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceRPC"

    .line 1857
    invoke-static {v0, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 1856
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v1

    const-string/jumbo v2, "CSpaceAclService_listAcl"

    const-string/jumbo v3, "7001"

    invoke-virtual {v1, v2, v3, p1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 1846
    iget-object v0, p0, Lgon$22;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1848
    invoke-direct {p0, p1, p2, p3}, Lgon$22;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1849
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1781
    check-cast p1, Lgkp;

    .line 2784
    if-eqz p1, :cond_0

    iget-object v0, p1, Lgkp;->a:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 2785
    :cond_0
    iget-object v0, p0, Lgon$22;->a:Lcma;

    const-string/jumbo v1, "2012"

    const-string/jumbo v2, "data error"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2786
    const-string/jumbo v0, "(result is null)"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lgon$22;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2787
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "CSpaceAclService_listAcl"

    const-string/jumbo v2, "7000"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2805
    :goto_0
    return-void

    .line 2792
    :cond_1
    iget-object v0, p1, Lgkp;->a:Ljava/lang/Long;

    .line 3044
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 2792
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 2793
    iget-object v0, p0, Lgon$22;->a:Lcma;

    iget-object v1, p1, Lgkp;->a:Ljava/lang/Long;

    .line 4044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 2793
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lgkp;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2794
    iget-object v0, p1, Lgkp;->a:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lgkp;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lgon$22;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2795
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "CSpaceAclService_listAcl"

    const-string/jumbo v2, "7000"

    iget-object v3, p1, Lgkp;->a:Ljava/lang/Long;

    .line 2796
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2795
    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2800
    :cond_2
    iget-object v0, p1, Lgkp;->c:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lgkp;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 2801
    :cond_3
    iget-object v0, p0, Lgon$22;->a:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 2802
    iget-object v0, p1, Lgkp;->a:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "result value is null or empty"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lgon$22;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2803
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "CSpaceAclService_listAcl"

    const-string/jumbo v2, "7000"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2808
    :cond_4
    new-instance v7, Lgnv;

    invoke-direct {v7}, Lgnv;-><init>()V

    .line 2809
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2811
    iget-object v0, p1, Lgkp;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgkm;

    .line 2812
    if-eqz v0, :cond_5

    .line 2816
    iget-object v1, v0, Lgkm;->b:Lgkt;

    if-eqz v1, :cond_8

    iget-object v1, v0, Lgkm;->b:Lgkt;

    iget-object v1, v1, Lgkt;->a:Ljava/lang/Long;

    .line 5044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 2816
    iget-wide v4, p0, Lgon$22;->b:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_8

    const/4 v1, 0x1

    .line 2818
    :goto_2
    iget-object v2, v0, Lgkm;->b:Lgkt;

    if-eqz v2, :cond_9

    iget-object v2, v0, Lgkm;->b:Lgkt;

    iget-object v2, v2, Lgkt;->a:Ljava/lang/Long;

    .line 6044
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 2821
    :goto_3
    iget-wide v2, p0, Lgon$22;->b:J

    const-wide/16 v10, 0x3eb

    cmp-long v2, v2, v10

    if-nez v2, :cond_a

    const-wide/16 v2, 0x3ec

    cmp-long v2, v4, v2

    if-nez v2, :cond_a

    const/4 v3, 0x1

    .line 2822
    :goto_4
    if-nez v1, :cond_6

    if-eqz v3, :cond_5

    .line 2826
    :cond_6
    iget-object v1, v0, Lgkm;->e:Ljava/lang/Boolean;

    .line 7022
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 2826
    if-nez v1, :cond_7

    if-nez v3, :cond_7

    .line 2827
    iget-object v1, v0, Lgkm;->a:Ljava/lang/Long;

    .line 7044
    const-wide/16 v10, 0x0

    invoke-static {v1, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v10

    .line 7099
    iput-wide v10, v7, Lgnv;->a:J

    .line 2830
    :cond_7
    iget-object v1, v0, Lgkm;->c:Ljava/lang/String;

    .line 7115
    iput-object v1, v7, Lgnv;->c:Ljava/lang/String;

    .line 2832
    iget-object v1, v0, Lgkm;->d:Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lgkm;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 2833
    iget-object v1, v0, Lgkm;->d:Ljava/util/List;

    iget-object v2, v0, Lgkm;->e:Ljava/lang/Boolean;

    .line 8022
    const/4 v6, 0x0

    invoke-static {v2, v6}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 2833
    iget-object v0, v0, Lgkm;->g:Ljava/lang/Integer;

    .line 8033
    const/4 v6, 0x0

    invoke-static {v0, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v6

    .line 2833
    invoke-static/range {v1 .. v6}, Lgnu;->a(Ljava/util/List;ZZJI)Ljava/util/List;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 2816
    :cond_8
    const/4 v1, 0x0

    goto :goto_2

    .line 2818
    :cond_9
    const-wide/16 v4, 0x0

    goto :goto_3

    .line 2821
    :cond_a
    const/4 v3, 0x0

    goto :goto_4

    .line 8123
    :cond_b
    iput-object v8, v7, Lgnv;->d:Ljava/util/List;

    .line 2838
    iget-wide v0, p0, Lgon$22;->b:J

    .line 9107
    iput-wide v0, v7, Lgnv;->b:J

    .line 2840
    iget-object v0, p0, Lgon$22;->a:Lcma;

    invoke-interface {v0, v7}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 2841
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "CSpaceAclService_listAcl"

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
