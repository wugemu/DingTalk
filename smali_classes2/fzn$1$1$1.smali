.class final Lfzn$1$1$1;
.super Lgqq;
.source "AlimeiSearchFacede.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzn$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfzn$1$1;


# direct methods
.method constructor <init>(Lfzn$1$1;)V
    .locals 0
    .param p1, "this$1"    # Lfzn$1$1;

    .prologue
    .line 49
    iput-object p1, p0, Lfzn$1$1$1;->a:Lfzn$1$1;

    invoke-direct {p0}, Lgqq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Void;)V
    .locals 13
    .param p1, "data"    # Ljava/lang/Void;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v8, 0x3

    const-wide/16 v6, 0x0

    .line 52
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    iget-object v0, p0, Lfzn$1$1$1;->a:Lfzn$1$1;

    iget-object v3, v0, Lfzn$1$1;->a:Ljava/util/List;

    iget-object v0, p0, Lfzn$1$1$1;->a:Lfzn$1$1;

    iget-object v0, v0, Lfzn$1$1;->b:Lfzn$1;

    iget-object v2, v0, Lfzn$1;->a:Ljava/lang/String;

    iget-object v0, p0, Lfzn$1$1$1;->a:Lfzn$1$1;

    iget-object v0, v0, Lfzn$1$1;->b:Lfzn$1;

    iget v4, v0, Lfzn$1;->b:I

    iget-object v0, p0, Lfzn$1$1$1;->a:Lfzn$1$1;

    iget-object v0, v0, Lfzn$1$1;->b:Lfzn$1;

    iget v5, v0, Lfzn$1;->c:I

    iget-object v0, p0, Lfzn$1$1$1;->a:Lfzn$1$1;

    iget-object v0, v0, Lfzn$1$1;->b:Lfzn$1;

    iget-object v9, v0, Lfzn$1;->d:Lcma;

    iget-object v0, p0, Lfzn$1$1$1;->a:Lfzn$1$1;

    iget-object v0, v0, Lfzn$1$1;->b:Lfzn$1;

    iget-object v10, v0, Lfzn$1;->e:Landroid/app/Activity;

    .line 2093
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v11, Lfzn$2;

    invoke-direct {v11, v9, v2, v4}, Lfzn$2;-><init>(Lcma;Ljava/lang/String;I)V

    const-class v9, Lcma;

    invoke-interface {v0, v11, v9, v10}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcma;

    .line 2374
    new-instance v10, Lgib;

    invoke-direct {v10}, Lgib;-><init>()V

    .line 2375
    iput-object v2, v10, Lgib;->d:Ljava/lang/String;

    .line 2376
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v10, Lgib;->e:Ljava/lang/Integer;

    .line 2377
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v10, Lgib;->f:Ljava/lang/Integer;

    .line 2378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2388
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_0

    .line 2389
    iput-object v0, v10, Lgib;->c:Ljava/util/List;

    .line 2283
    :cond_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v10, Lgib;->b:Ljava/lang/Integer;

    .line 2284
    cmp-long v0, v6, v6

    if-lez v0, :cond_1

    .line 2285
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lgib;->a:Ljava/lang/String;

    .line 2287
    :cond_1
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v11, "CSpace.RPC"

    const-string/jumbo v12, "search"

    invoke-static {v0, v11, v12}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 2288
    iget-object v11, v1, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    new-instance v0, Lgon$10;

    invoke-direct/range {v0 .. v9}, Lgon$10;-><init>(Lgon;Ljava/lang/String;Ljava/util/List;IIJILcma;)V

    invoke-interface {v11, v10, v0}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;->search(Lgib;Liyv;)V

    .line 55
    return-void
.end method

.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 49
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfzn$1$1$1;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 64
    iget-object v0, p0, Lfzn$1$1$1;->a:Lfzn$1$1;

    iget-object v0, v0, Lfzn$1$1;->b:Lfzn$1;

    iget-object v0, v0, Lfzn$1;->d:Lcma;

    const/4 v1, 0x0

    .line 3027
    invoke-static {v0, v1}, Lfzn;->a(Lcma;Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 60
    return-void
.end method
