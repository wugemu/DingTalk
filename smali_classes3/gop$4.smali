.class final Lgop$4;
.super Ljava/lang/Object;
.source "SpaceShareRPC.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgop;->a(JLjava/util/List;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lcgc;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcma;

.field final synthetic d:J

.field final synthetic e:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/Map;Lcma;JLjava/util/List;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lgop$4;->a:Ljava/util/List;

    iput-object p2, p0, Lgop$4;->b:Ljava/util/Map;

    iput-object p3, p0, Lgop$4;->c:Lcma;

    iput-wide p4, p0, Lgop$4;->d:J

    iput-object p6, p0, Lgop$4;->e:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 524
    check-cast p1, Ljava/util/List;

    .line 1527
    if-nez p1, :cond_0

    .line 1528
    const-string/jumbo v0, "null"

    const-string/jumbo v1, "(result is null)"

    invoke-virtual {p0, v0, v1}, Lgop$4;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    :goto_0
    return-void

    .line 1531
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, Lgop$4;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v0, v3, :cond_3

    move v0, v1

    .line 1532
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v0

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgc;

    .line 1533
    if-eqz v0, :cond_2

    iget-object v5, v0, Lcgc;->b:Lcet;

    if-nez v5, :cond_4

    :cond_2
    move v3, v1

    .line 1535
    goto :goto_2

    :cond_3
    move v0, v2

    .line 1531
    goto :goto_1

    .line 1537
    :cond_4
    iget-object v0, v0, Lcgc;->b:Lcet;

    iget-object v0, v0, Lcet;->a:Ljava/lang/Long;

    .line 2044
    const-wide/16 v6, 0x0

    invoke-static {v0, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 1538
    iget-object v0, p0, Lgop$4;->b:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

    .line 1539
    if-eqz v0, :cond_1

    .line 1542
    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->setExternalStaff(Z)V

    goto :goto_2

    .line 1544
    :cond_5
    iget-object v0, p0, Lgop$4;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

    .line 1545
    if-eqz v0, :cond_6

    .line 1548
    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->setExternalStaff(Z)V

    goto :goto_3

    .line 1550
    :cond_7
    iget-object v0, p0, Lgop$4;->c:Lcma;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lgop$4;->a:Ljava/util/List;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 559
    iget-object v1, p0, Lgop$4;->c:Lcma;

    invoke-interface {v1, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "checkExternalStaff: getUserEmployeeInfos: orgId: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lgop$4;->d:J

    .line 561
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", userIds: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lgop$4;->e:Ljava/util/List;

    .line 562
    invoke-static {v3}, Lgpr;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 560
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, "method":Ljava/lang/String;
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceShareRPC"

    const/4 v3, 0x0

    .line 564
    invoke-static {v0, p1, p2, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 563
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 555
    return-void
.end method
