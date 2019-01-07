.class final Lgop$15$1;
.super Lcmi;
.source "SpaceShareRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgop$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lgip;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgop$15;


# direct methods
.method constructor <init>(Lgop$15;)V
    .locals 0
    .param p1, "this$0"    # Lgop$15;

    .prologue
    .line 180
    iput-object p1, p0, Lgop$15$1;->a:Lgop$15;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 191
    iget-object v0, p0, Lgop$15$1;->a:Lgop$15;

    iget-object v0, v0, Lgop$15;->c:Lcma;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lgop$15$1;->a:Lgop$15;

    iget-object v0, v0, Lgop$15;->c:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_0
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceShareRPC"

    const-string/jumbo v2, "listCooperationFolders"

    .line 195
    invoke-static {v2, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "DpCoFolderService_listFolers"

    const-string/jumbo v2, "7001"

    invoke-virtual {v0, v1, v2, p1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 180
    check-cast p1, Lgip;

    .line 1183
    iget-object v0, p0, Lgop$15$1;->a:Lgop$15;

    iget-object v0, v0, Lgop$15;->c:Lcma;

    if-eqz v0, :cond_0

    .line 1184
    iget-object v0, p0, Lgop$15$1;->a:Lgop$15;

    iget-object v0, v0, Lgop$15;->c:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1186
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "DpCoFolderService_listFolers"

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;)V

    .line 180
    return-void
.end method
