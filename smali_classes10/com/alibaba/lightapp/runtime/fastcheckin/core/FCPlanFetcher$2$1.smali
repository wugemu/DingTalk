.class final Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2$1;
.super Ljava/lang/Object;
.source "FCPlanFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 94
    const-string/jumbo v1, "FCPlanFetcher"

    const-string/jumbo v2, "doFetch"

    new-array v3, v7, [Ljava/lang/Object;

    const-string/jumbo v4, "fetchNum"

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2;->b:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;->access$100(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2;->b:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;->access$300(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2;->b:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;

    invoke-static {v1, v5}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;->access$000(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;Z)V

    .line 123
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2;->b:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;->access$400(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;)Ljava/util/List;

    move-result-object v0

    .line 100
    .local v0, "corpIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2;->a:Lcma;

    const-string/jumbo v2, "-1"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_1
    const-string/jumbo v1, "FCPlanFetcher"

    const-string/jumbo v2, "doFetch"

    new-array v3, v7, [Ljava/lang/Object;

    const-string/jumbo v4, "corpIds"

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    invoke-static {}, Lhqr;->a()Lhqr;

    move-result-object v2

    new-instance v3, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2$1$1;

    invoke-direct {v3, p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2$1$1;-><init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2$1;)V

    .line 1119
    const-class v1, Lcom/alibaba/lightapp/runtime/idl/OAUploadIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/idl/OAUploadIService;

    .line 1120
    new-instance v4, Lhqr$3;

    invoke-direct {v4, v2, v3}, Lhqr$3;-><init>(Lhqr;Lcma;)V

    invoke-interface {v1, v0, v4}, Lcom/alibaba/lightapp/runtime/idl/OAUploadIService;->listFastCheckScheduleV2(Ljava/util/List;Liyv;)V

    goto :goto_0
.end method
