.class final Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2$1$1;
.super Ljava/lang/Object;
.source "FCPlanFetcher.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2$1;->run()V
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
        "Lhhj;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2$1;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2$1;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2$1$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 104
    check-cast p1, Ljava/util/List;

    .line 1107
    const-string/jumbo v1, "FCPlanFetcher"

    const-string/jumbo v2, "doFetch onDataReceived"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "models.size"

    aput-object v4, v3, v0

    const/4 v4, 0x1

    if-nez p1, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1108
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2$1$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2;->b:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2$1$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2$1;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2;->a:Lcma;

    invoke-static {v0, p1, v1}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;->access$500(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;Ljava/util/List;Lcma;)V

    .line 104
    return-void

    .line 1107
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 118
    const-string/jumbo v0, "FCPlanFetcher"

    const-string/jumbo v1, "doFetch onException"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "code"

    aput-object v4, v2, v3

    aput-object p1, v2, v5

    const/4 v3, 0x2

    const-string/jumbo v4, "msg"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2$1$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2;->b:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;

    invoke-static {v0, v5}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;->access$000(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;Z)V

    .line 120
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 114
    return-void
.end method
