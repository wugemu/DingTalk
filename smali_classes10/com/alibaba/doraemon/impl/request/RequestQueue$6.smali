.class Lcom/alibaba/doraemon/impl/request/RequestQueue$6;
.super Ljava/lang/Object;
.source "RequestQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/request/RequestQueue;->deliverFinsh(Lcom/alibaba/doraemon/impl/request/RequestClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/request/RequestQueue;

.field final synthetic val$requestClient:Lcom/alibaba/doraemon/impl/request/RequestClient;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/request/RequestQueue;Lcom/alibaba/doraemon/impl/request/RequestClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/request/RequestQueue;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$6;->this$0:Lcom/alibaba/doraemon/impl/request/RequestQueue;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$6;->val$requestClient:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 236
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$6;->this$0:Lcom/alibaba/doraemon/impl/request/RequestQueue;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$6;->val$requestClient:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/impl/request/RequestQueue;->access$500(Lcom/alibaba/doraemon/impl/request/RequestQueue;Lcom/alibaba/doraemon/impl/request/RequestClient;)V

    .line 238
    return-void
.end method
