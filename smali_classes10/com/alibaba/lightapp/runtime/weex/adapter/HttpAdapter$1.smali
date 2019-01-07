.class Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter$1;
.super Ljava/lang/Object;
.source "HttpAdapter.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 32
    const-string/jumbo v1, "THREAD"

    .line 33
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 35
    .local v0, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 36
    return-void
.end method
