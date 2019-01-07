.class public final Lgop$8;
.super Lcmi;
.source "SpaceShareRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lgiz;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;


# direct methods
.method public constructor <init>(Lcma;)V
    .locals 0

    .prologue
    .line 690
    iput-object p1, p0, Lgop$8;->a:Lcma;

    invoke-direct {p0}, Lcmi;-><init>()V

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
    .line 708
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceShareRPC"

    const-string/jumbo v2, "getConversationsByOrg"

    invoke-static {v2, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Lgop$8;->a:Lcma;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lgop$8;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "DpOrgService_getOrgConversations"

    const-string/jumbo v2, "7001"

    invoke-virtual {v0, v1, v2, p1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 690
    check-cast p1, Lgiz;

    .line 1693
    const/4 v0, 0x0

    .line 1695
    if-eqz p1, :cond_0

    iget-object v1, p1, Lgiz;->c:Lgja;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lgiz;->c:Lgja;

    iget-object v1, v1, Lgja;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1696
    iget-object v0, p1, Lgiz;->c:Lgja;

    iget-object v0, v0, Lgja;->b:Ljava/util/List;

    .line 1699
    :cond_0
    iget-object v1, p0, Lgop$8;->a:Lcma;

    if-eqz v1, :cond_1

    .line 1700
    iget-object v1, p0, Lgop$8;->a:Lcma;

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1703
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "DpOrgService_getOrgConversations"

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;)V

    .line 690
    return-void
.end method
