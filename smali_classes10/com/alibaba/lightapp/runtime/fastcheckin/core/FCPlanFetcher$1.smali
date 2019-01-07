.class final Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$1;
.super Ljava/lang/Object;
.source "FCPlanFetcher.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;->fetch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataReceived(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;->access$000(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;Z)V

    .line 65
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;->access$100(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;->access$000(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;Z)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;

    invoke-static {v0, p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;->access$200(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;Lcma;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 70
    return-void
.end method
