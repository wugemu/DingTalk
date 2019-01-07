.class final Lgon$49;
.super Lcmi;
.source "SpaceRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgon;->a(JJLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lgho;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcma;

.field final synthetic d:Lgon;


# direct methods
.method constructor <init>(Lgon;JJLcma;)V
    .locals 0
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 2786
    iput-object p1, p0, Lgon$49;->d:Lgon;

    iput-wide p2, p0, Lgon$49;->a:J

    iput-wide p4, p0, Lgon$49;->b:J

    iput-object p6, p0, Lgon$49;->c:Lcma;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 2822
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "infoMediaInfo: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "(spaceId: "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v4, p0, Lgon$49;->a:J

    .line 2823
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, ", fileId: "

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v4, p0, Lgon$49;->b:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, ")"

    aput-object v3, v1, v2

    .line 2822
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2824
    .local v0, "info":Ljava/lang/String;
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceRPC"

    .line 2825
    invoke-static {v0, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 2824
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2826
    iget-object v1, p0, Lgon$49;->c:Lcma;

    invoke-interface {v1, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2827
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v1

    const-string/jumbo v2, "CSpaceService_infoMediaInfo"

    const-string/jumbo v3, "7001"

    invoke-virtual {v1, v2, v3, p1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2829
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 17

    .prologue
    .line 2786
    check-cast p1, Lgho;

    .line 3789
    if-nez p1, :cond_0

    .line 3790
    const-string/jumbo v2, "RESULT_NULL"

    const-string/jumbo v3, "result is null"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lgon$49;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3791
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v2

    const-string/jumbo v3, "CSpaceService_infoMediaInfo"

    const-string/jumbo v4, "7000"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3799
    :goto_0
    return-void

    .line 3795
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lgho;->a:Ljava/lang/Long;

    if-eqz v2, :cond_1

    move-object/from16 v0, p1

    iget-object v2, v0, Lgho;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 3796
    move-object/from16 v0, p1

    iget-object v2, v0, Lgho;->a:Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lgho;->b:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lgon$49;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3797
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v2

    const-string/jumbo v3, "CSpaceService_infoMediaInfo"

    const-string/jumbo v4, "7000"

    move-object/from16 v0, p1

    iget-object v5, v0, Lgho;->a:Ljava/lang/Long;

    .line 4044
    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 3798
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 3797
    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3802
    :cond_1
    new-instance v16, Lgrh;

    invoke-direct/range {v16 .. v16}, Lgrh;-><init>()V

    .line 3803
    move-object/from16 v0, p1

    iget-object v2, v0, Lgho;->f:Ljava/lang/Double;

    .line 4066
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/Double;D)D

    move-result-wide v2

    .line 3803
    double-to-long v2, v2

    move-object/from16 v0, v16

    iput-wide v2, v0, Lgrh;->a:J

    .line 3804
    move-object/from16 v0, p1

    iget-object v2, v0, Lgho;->d:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v2, v0, Lgrh;->b:Ljava/lang/String;

    .line 3805
    move-object/from16 v0, p1

    iget-object v2, v0, Lgho;->c:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v2, v0, Lgrh;->c:Ljava/lang/String;

    .line 3806
    move-object/from16 v0, p1

    iget-object v2, v0, Lgho;->e:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v2, v0, Lgrh;->d:Ljava/lang/String;

    .line 3807
    move-object/from16 v0, p1

    iget-object v2, v0, Lgho;->g:Ljava/lang/Double;

    .line 5066
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/Double;D)D

    move-result-wide v2

    .line 3807
    double-to-int v2, v2

    move-object/from16 v0, v16

    iput v2, v0, Lgrh;->e:I

    .line 3808
    move-object/from16 v0, p1

    iget-object v2, v0, Lgho;->h:Ljava/lang/Double;

    .line 6066
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/Double;D)D

    move-result-wide v2

    .line 3808
    double-to-int v2, v2

    move-object/from16 v0, v16

    iput v2, v0, Lgrh;->f:I

    .line 3809
    move-object/from16 v0, p1

    iget-object v2, v0, Lgho;->i:Ljava/lang/Integer;

    .line 7033
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 3809
    move-object/from16 v0, v16

    iput v2, v0, Lgrh;->g:I

    .line 3810
    move-object/from16 v0, p1

    iget-object v2, v0, Lgho;->l:Ljava/lang/Long;

    .line 7044
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 3810
    move-object/from16 v0, v16

    iput-wide v2, v0, Lgrh;->h:J

    .line 3811
    move-object/from16 v0, p0

    iget-wide v2, v0, Lgon$49;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lgrh;->i:Ljava/lang/String;

    .line 3812
    move-object/from16 v0, p0

    iget-wide v2, v0, Lgon$49;->b:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lgrh;->j:Ljava/lang/String;

    .line 3814
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgoj;->a(Ljava/lang/String;)Lgoj;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lgon$49;->a:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lgon$49;->b:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 7598
    new-instance v15, Lgoj$3;

    const/4 v5, 0x0

    invoke-direct {v15, v2, v5}, Lgoj$3;-><init>(Lgoj;Lcma;)V

    .line 7615
    iget-object v2, v2, Lgoj;->a:Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;

    move-object/from16 v0, v16

    iget-object v5, v0, Lgrh;->b:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v6, v0, Lgrh;->c:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v7, v0, Lgrh;->d:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-wide v8, v0, Lgrh;->a:J

    move-object/from16 v0, v16

    iget v10, v0, Lgrh;->e:I

    move-object/from16 v0, v16

    iget v11, v0, Lgrh;->f:I

    move-object/from16 v0, v16

    iget v12, v0, Lgrh;->g:I

    move-object/from16 v0, v16

    iget-wide v13, v0, Lgrh;->h:J

    invoke-interface/range {v2 .. v15}, Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;->updateThumbnailsInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIIJLxv;)V

    .line 3816
    move-object/from16 v0, p0

    iget-object v2, v0, Lgon$49;->c:Lcma;

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 3817
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v2

    const-string/jumbo v3, "CSpaceService_infoMediaInfo"

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
