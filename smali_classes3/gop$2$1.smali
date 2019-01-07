.class final Lgop$2$1;
.super Ljava/lang/Object;
.source "SpaceShareRPC.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgop$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lgoh;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfp;

.field final synthetic b:Lgio;

.field final synthetic c:Lgop$2;


# direct methods
.method constructor <init>(Lgop$2;Lfp;Lgio;)V
    .locals 0
    .param p1, "this$0"    # Lgop$2;

    .prologue
    .line 454
    iput-object p1, p0, Lgop$2$1;->c:Lgop$2;

    iput-object p2, p0, Lgop$2$1;->a:Lfp;

    iput-object p3, p0, Lgop$2$1;->b:Lgio;

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
    .line 454
    check-cast p1, Ljava/util/List;

    .line 2457
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2459
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2460
    :cond_0
    iget-object v0, p0, Lgop$2$1;->c:Lgop$2;

    iget-object v0, v0, Lgop$2;->b:Lcma;

    invoke-interface {v0, v2}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 2461
    :goto_0
    return-void

    .line 2464
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgoh;

    .line 2465
    new-instance v4, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

    iget-object v1, p0, Lgop$2$1;->a:Lfp;

    iget-wide v6, v0, Lgoh;->a:J

    .line 3096
    const/4 v5, 0x0

    invoke-virtual {v1, v6, v7, v5}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2465
    check-cast v1, Ljava/lang/Integer;

    iget-object v5, p0, Lgop$2$1;->c:Lgop$2;

    iget v5, v5, Lgop$2;->c:I

    invoke-direct {v4, v0, v1, v5}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;-><init>(Lgoh;Ljava/lang/Integer;I)V

    .line 2466
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2469
    :cond_2
    iget-object v0, p0, Lgop$2$1;->c:Lgop$2;

    iget-object v0, v0, Lgop$2;->b:Lcma;

    invoke-interface {v0, v2}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 479
    iget-object v1, p0, Lgop$2$1;->b:Lgio;

    iget-object v1, v1, Lgio;->d:Ljava/util/List;

    iget-object v2, p0, Lgop$2$1;->c:Lgop$2;

    iget v2, v2, Lgop$2;->c:I

    .line 1571
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1572
    if-eqz v1, :cond_0

    .line 1573
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgiq;

    .line 1574
    new-instance v4, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

    invoke-direct {v4, v1, v2}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;-><init>(Lgiq;I)V

    .line 1575
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 480
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;>;"
    :cond_0
    iget-object v1, p0, Lgop$2$1;->c:Lgop$2;

    iget-object v1, v1, Lgop$2;->b:Lcma;

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 481
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 475
    return-void
.end method
