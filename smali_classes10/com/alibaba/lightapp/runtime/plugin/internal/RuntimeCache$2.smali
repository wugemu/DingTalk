.class Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$2;
.super Ljava/lang/Object;
.source "RuntimeCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->restore(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;

.field final synthetic val$bizType:Ljava/lang/String;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$2;->val$bizType:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$2;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const-string/jumbo v0, "RuntimeCache"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$2$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$2$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$2;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 154
    :cond_0
    return-void
.end method
